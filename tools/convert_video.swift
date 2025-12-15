import Foundation
import AVFoundation

let sourcePath = "SigmundFreudMuseum.MOV"
let destinationPath = "SigmundFreudMuseum_converted.mp4"

let sourceURL = URL(fileURLWithPath: FileManager.default.currentDirectoryPath).appendingPathComponent(sourcePath)
let destinationURL = URL(fileURLWithPath: FileManager.default.currentDirectoryPath).appendingPathComponent(destinationPath)

if !FileManager.default.fileExists(atPath: sourceURL.path) {
    fputs("Source file not found at \(sourceURL.path)\n", stderr)
    exit(1)
}

if FileManager.default.fileExists(atPath: destinationURL.path) {
    try? FileManager.default.removeItem(at: destinationURL)
}

let asset = AVURLAsset(url: sourceURL)
let preset = AVAssetExportPreset1920x1080

guard let exporter = AVAssetExportSession(asset: asset, presetName: preset) else {
    fputs("Unable to create export session\n", stderr)
    exit(1)
}

exporter.outputURL = destinationURL
exporter.outputFileType = .mp4
exporter.shouldOptimizeForNetworkUse = true

let semaphore = DispatchSemaphore(value: 0)
exporter.exportAsynchronously {
    semaphore.signal()
}

semaphore.wait()

switch exporter.status {
case .completed:
    print("Export completed: \(destinationURL.lastPathComponent)")
    exit(0)
case .failed:
    fputs("Export failed: \(exporter.error?.localizedDescription ?? "Unknown error")\n", stderr)
    exit(1)
case .cancelled:
    fputs("Export cancelled\n", stderr)
    exit(1)
default:
    fputs("Export ended with status: \(exporter.status.rawValue)\n", stderr)
    exit(1)
}
