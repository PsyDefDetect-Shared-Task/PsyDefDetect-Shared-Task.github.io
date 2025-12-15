import Foundation
import AVFoundation

let sourcePath = "SigmundFreudMuseum.MOV"
let destinationPath = "SigmundFreudMuseum_transcoded.mp4"

let sourceURL = URL(fileURLWithPath: FileManager.default.currentDirectoryPath).appendingPathComponent(sourcePath)
let destinationURL = URL(fileURLWithPath: FileManager.default.currentDirectoryPath).appendingPathComponent(destinationPath)

func fail(_ message: String) -> Never {
    fputs("\(message)\n", stderr)
    exit(1)
}

if !FileManager.default.fileExists(atPath: sourceURL.path) {
    fail("Source file not found at \(sourceURL.path)")
}

if FileManager.default.fileExists(atPath: destinationURL.path) {
    try? FileManager.default.removeItem(at: destinationURL)
}

let asset = AVURLAsset(url: sourceURL)
print("Starting transcode for \(sourceURL.lastPathComponent)...")
let durationSeconds = CMTimeGetSeconds(asset.duration)
print(String(format: "Source duration: %.2f seconds", durationSeconds))

guard let reader = try? AVAssetReader(asset: asset) else {
    fail("Unable to create AVAssetReader")
}

guard let writer = try? AVAssetWriter(outputURL: destinationURL, fileType: .mp4) else {
    fail("Unable to create AVAssetWriter")
}

let writingGroup = DispatchGroup()
var setupSucceeded = false

defer {
    if !setupSucceeded {
        reader.cancelReading()
        writer.cancelWriting()
    }
}

if let videoTrack = asset.tracks(withMediaType: .video).first {
    let videoOutputSettings: [String: Any] = [
        kCVPixelBufferPixelFormatTypeKey as String: kCVPixelFormatType_420YpCbCr8BiPlanarVideoRange
    ]
    let videoOutput = AVAssetReaderTrackOutput(track: videoTrack, outputSettings: videoOutputSettings)
    videoOutput.alwaysCopiesSampleData = false
    guard reader.canAdd(videoOutput) else { fail("Unable to add video output") }
    reader.add(videoOutput)

    let bitrate = max(videoTrack.estimatedDataRate, 5_000_000)
    let videoInputSettings: [String: Any] = [
        AVVideoCodecKey: AVVideoCodecType.h264,
        AVVideoWidthKey: videoTrack.naturalSize.width,
        AVVideoHeightKey: videoTrack.naturalSize.height,
        AVVideoCompressionPropertiesKey: [
            AVVideoAverageBitRateKey: bitrate,
            AVVideoProfileLevelKey: AVVideoProfileLevelH264High41,
            AVVideoMaxKeyFrameIntervalKey: 60,
            AVVideoAllowFrameReorderingKey: true
        ]
    ]

    let videoInput = AVAssetWriterInput(mediaType: .video, outputSettings: videoInputSettings)
    videoInput.expectsMediaDataInRealTime = false
    guard writer.canAdd(videoInput) else { fail("Unable to add video input") }
    writer.add(videoInput)

    writingGroup.enter()
    videoInput.requestMediaDataWhenReady(on: DispatchQueue(label: "videoWriter")) {
        while videoInput.isReadyForMoreMediaData {
            if let sample = videoOutput.copyNextSampleBuffer() {
                if !videoInput.append(sample) {
                    fail("Failed to append video sample: \(writer.error?.localizedDescription ?? "Unknown error")")
                }
            } else {
                videoInput.markAsFinished()
                writingGroup.leave()
                break
            }
        }
    }
} else {
    print("No video track found")
}

if let audioTrack = asset.tracks(withMediaType: .audio).first {
    let audioOutputSettings: [String: Any] = [
        AVFormatIDKey: kAudioFormatLinearPCM,
        AVSampleRateKey: 44100,
        AVNumberOfChannelsKey: 2,
        AVLinearPCMIsFloatKey: false,
        AVLinearPCMBitDepthKey: 16
    ]
    let audioOutput = AVAssetReaderTrackOutput(track: audioTrack, outputSettings: audioOutputSettings)
    guard reader.canAdd(audioOutput) else { fail("Unable to add audio output") }
    reader.add(audioOutput)

    let audioInputSettings: [String: Any] = [
        AVFormatIDKey: kAudioFormatMPEG4AAC,
        AVNumberOfChannelsKey: 2,
        AVSampleRateKey: 44100,
        AVEncoderBitRateKey: 128000
    ]
    let audioInput = AVAssetWriterInput(mediaType: .audio, outputSettings: audioInputSettings)
    audioInput.expectsMediaDataInRealTime = false
    guard writer.canAdd(audioInput) else { fail("Unable to add audio input") }
    writer.add(audioInput)

    writingGroup.enter()
    audioInput.requestMediaDataWhenReady(on: DispatchQueue(label: "audioWriter")) {
        while audioInput.isReadyForMoreMediaData {
            if let sample = audioOutput.copyNextSampleBuffer() {
                if !audioInput.append(sample) {
                    fail("Failed to append audio sample: \(writer.error?.localizedDescription ?? "Unknown error")")
                }
            } else {
                audioInput.markAsFinished()
                writingGroup.leave()
                break
            }
        }
    }
} else {
    print("No audio track found")
}

setupSucceeded = true

writer.startWriting()
reader.startReading()
writer.startSession(atSourceTime: .zero)

writingGroup.wait()

let finishSemaphore = DispatchSemaphore(value: 0)
writer.finishWriting {
    finishSemaphore.signal()
}
finishSemaphore.wait()

if reader.status == .failed {
    fail("Reader failed: \(reader.error?.localizedDescription ?? "Unknown error")")
}

if writer.status == .failed {
    fail("Writer failed: \(writer.error?.localizedDescription ?? "Unknown error")")
}

print("Export completed: \(destinationURL.lastPathComponent)")
