---
layout: page
title: PsyDefDetect
subtitle: Co-located with BioNLP@ACL 2026
permalink: /
description: Explore the latest shared task, schedule, and datasets in one place.
nav_key: home
---

PsyDefDetect invites researchers to tackle a novel challenge at the intersection of Clinical Psychology and Natural Language Processing: detecting and classifying psychological defense mechanisms in emotional support dialogues.

Grounded in the clinically validated *Defense Mechanism Rating Scales (DMRS)* framework, this shared task aims to advance the understanding of unconscious defensive functioning in text.

## News
- **2026-04-05** – We will present three shared task awards: **Best System Paper**, **Best Exploration Paper**, and **Best Interdisciplinary Insight Paper**, with certificates awarded on-site at BioNLP@ACL 2026. We encourage all participating teams to submit a system paper. See [Paper Submission](/paper-submission/) for details.
- **2026-04-05** – [Result registration form](https://docs.google.com/forms/d/e/1FAIpQLSfaZ4PMMicGvXrs_a3oXScYzzk1LipyPNO2m1EQjuta3kGwvg/viewform?usp=dialog) is now open. All teams must register by ~~April 7~~ → **April 8, 2026**.
- **2026-04-05** – [Paper submission guidelines](/paper-submission/) are now available, including format and required references.
- **2026-04-04** – End of evaluation period extended to **April 7, 2026 (AOE)**. Submission guidelines and team registration link will be released on April 5.
- **2026-03-15** – Evaluation period begins.
- **2025-12-20** – Task launch on [CodaBench](https://www.codabench.org/competitions/12124/) with starter baseline kits.
- **2025-12-15** – PsyDefDetect is officially announced as a shared task at the BioNLP@ACL 2026.

## FAQ

<details class="faq-item">
<summary>Where can I download the dataset?</summary>
<div class="faq-answer">
<p>The dataset is hosted on our <a href="https://www.codabench.org/competitions/12124/">CodaBench competition page</a>. After registering for the competition, navigate to the <strong>Files</strong> tab on the left sidebar, then click <strong>input_data</strong> to download the dataset, which contains the training and test splits.</p>
<img src="{{ '/assets/images/faq-download-data.png' | relative_url }}" alt="CodaBench Files tab showing input_data download">
</div>
</details>

<details class="faq-item">
<summary>How do I submit my results?</summary>
<div class="faq-answer">
<p>In the downloaded <code>test.json</code>, add a new field <code>"label"</code> to each entry with your predicted defense level, and save the file as <code>prediction.json</code>. Due to CodaBench's submission rules, you must <strong>compress the JSON file into a ZIP archive</strong> before uploading. Go to the <strong>My Submissions</strong> tab and upload the ZIP file. Once scored, you can choose whether to make your result public on the leaderboard.</p>
<img src="{{ '/assets/images/faq-submission.png' | relative_url }}" alt="CodaBench My Submissions tab showing upload area">
<p>We also provide baselines to help you get started. Please refer to the <strong>Baselines</strong> tab on the CodaBench competition page for details.</p>
<img src="{{ '/assets/images/faq-baseline.png' | relative_url }}" alt="CodaBench Baselines tab showing zero-shot prompting baseline">
</div>
</details>

<details class="faq-item">
<summary>How do I register my team?</summary>
<div class="faq-answer">
<p>We will release a Google Form for team registration at the end of the evaluation period.</p>
</div>
</details>

## Contact
Please stay up to date by joining our [Discord Server](https://discord.gg/AhuspeXNkM) and [Mailing List](https://groups.google.com/g/psydefdetect). If you have any questions for the organizers, please email us at psydefdetect@googlegroups.com.


## Organizers
- [Hongbin Na](https://hongbin-ze.github.io/), University of Technology Sydney
- [Zimu Wang](https://www.zimuwang.net/), Xi'an Jiaotong-Liverpool University
- [Zhaoming Chen](https://www.linkedin.com/in/chen-zhaoming-727a18217/), University of Utah
- [Yining Hua](https://ningkko.github.io/), Harvard University
- [Rena Gao](https://www.linkedin.com/in/rena-gao-72a71a113/), The University of Melbourne
- [Kailai Yang](https://stevekgyang.github.io/), The University of Manchester
- [Ling Chen](https://profiles.uts.edu.au/Ling.Chen), University of Technology Sydney
- [Wei Wang](https://scholar.xjtlu.edu.cn/en/persons/WeiWang03), Xi'an Jiaotong-Liverpool University
- [Shaoxiong Ji](https://shaoxiongji.github.io/), ELLIS Institute Finland & University of Turku
- [John Torous](https://connects.catalyst.harvard.edu/Profiles/display/Person/109089), Harvard University
- [Sophia Ananiadou](https://research.manchester.ac.uk/en/persons/sophia.ananiadou), The University of Manchester

## Acknowledgments
We thank [Label Studio](https://labelstud.io/) for providing Academic Program access to its data labeling platform, which supported our annotation work.

<div class="ack-logos">
  <img src="{{ '/LabelStudio.svg' | relative_url }}" alt="Label Studio logo">
</div>

## Fun Facts
This psychological defenses dataset was annotated by the author while attending ACL 2025 in Vienna, with a brief visit to the Sigmund Freud Museum.

<div style="position: relative; padding-bottom: 56.25%; height: 0; overflow: hidden; border-radius: 0.75rem;">
  <video
    style="position: absolute; top: 0; left: 0; width: 100%; height: 100%; border: 0;"
    controls
    preload="metadata"
    playsinline
    title="Sigmund Freud Museum"
  >
    <source src="{{ '/SigmundFreudMuseum.mp4' | relative_url }}" type="video/mp4" />
    <source src="{{ '/SigmundFreudMuseum.MOV' | relative_url }}" type="video/quicktime" />
    Your browser does not support the video tag.
  </video>
</div>
