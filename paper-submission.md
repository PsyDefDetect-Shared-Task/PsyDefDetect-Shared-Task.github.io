---
layout: page
title: Paper Submission
permalink: /paper-submission/
nav_key: paper-submission
---

## Important Dates

All deadlines are 11:59 PM UTC-12:00 ("Anywhere on Earth").

- **Result registration closes**: ~~April 7~~ → **April 8, 2026**
- **Final results announced**: ~~April 8~~ → **April 9, 2026**
- **Paper submission deadline**: April 17, 2026
- **Notification of acceptance**: May 4, 2026
- **Camera-ready paper due**: May 12, 2026
- **BioNLP Workshop date**: July 3 or 4, 2026

> **⚠️ IMPORTANT**: All teams must complete the [Result Registration Form](https://docs.google.com/forms/d/e/1FAIpQLSfaZ4PMMicGvXrs_a3oXScYzzk1LipyPNO2m1EQjuta3kGwvg/viewform?usp=dialog) **before April 8, 2026 (AOE)**. Teams that do not register by this deadline will not be included in the official ranking.

## Submission

All participating teams are invited to submit system papers that, pending review, will be published as part of the BioNLP Workshop proceedings.

Participants can submit a system paper at the following SoftConf link (track **"PsyDefDetect"**) anytime before the deadline on April 17, 2026:

[https://softconf.com/acl2026/bionlp2026-st](https://softconf.com/acl2026/bionlp2026-st)

## Format

**Length**: System papers should follow the **ACL 2026 short paper format** (i.e., up to **4 pages** of content, with unlimited pages for appendices and references), as described on the [ACL 2026 Call for Papers](https://2026.aclweb.org/calls/main_conference_papers/#paper-submission-details).

**Template**: The LaTeX/Word templates can be found at: [https://github.com/acl-org/acl-style-files](https://github.com/acl-org/acl-style-files)

**Anonymity**: As shared task system papers, submissions are **not anonymized** — please include author names and affiliations.

**Title format**: Paper titles must follow: “{TEAM_NAME} at PsyDefDetect: {DESCRIPTIVE_TITLE}”, where the descriptive title reflects your approach.

## What We Are Looking For

As a shared task, all submissions should be **system description papers grounded in the PsyDefDetect task** — that is, they should describe a technical approach and report results on the shared task data. You do not need to top the leaderboard, but experimental results are expected as the foundation of your paper.

Papers with strong system performance are encouraged to provide detailed analysis of what design choices, training strategies, or data handling contributed to their success, offering actionable insights and reproducible takeaways for the community.

Beyond system descriptions, we also welcome papers that build on their experimental findings to offer deeper insight into the task, including:

- **Negative or unexpected results** with thoughtful analysis of why certain approaches fail for defense level detection.
- **Error analyses** that reveal what current models can and cannot capture about psychological defensive functioning in dialogue.
- **Interdisciplinary contributions** that bridge the DMRS clinical framework and NLP methodology, examining the gap between model outputs and clinical validity.
- **Forward-looking perspectives** that identify open challenges, propose new directions, or discuss the broader implications of automated defense mechanism detection for clinical practice.

Honest reporting of what does *not* work — and why — helps the community avoid redundant efforts and advances our collective understanding of this challenging task.

## Awards

We are pleased to announce three awards for outstanding contributions:

- **Best System Paper** — Recognizing the team whose system paper demonstrates the strongest overall design, evaluation rigor, and task performance.
- **Best Exploration Paper** — Recognizing work that provides novel analyses, insightful error studies, or creative experimental perspectives beyond the core task setup.
- **Best Interdisciplinary Insight Paper** — Recognizing the paper that most effectively bridges clinical psychology theory and NLP methodology, advancing our understanding of defensive functioning in text.

Award winners will be announced and certificates will be presented on-site at the BioNLP workshop at ACL 2026 in San Diego.

## References

We ask participants to ensure the following citations are included in their system papers:

<style>
.cite-block {
  position: relative;
  margin: 1em 0 1.5em 0;
  border: 1px solid #e1e4e8;
  border-radius: 6px;
  overflow: hidden;
}
.cite-block .cite-header {
  display: flex;
  justify-content: space-between;
  align-items: center;
  padding: 8px 12px;
  background: #f6f8fa;
  border-bottom: 1px solid #e1e4e8;
  font-size: 13px;
  color: #586069;
}
.cite-block .cite-header span {
  font-weight: 600;
}
.cite-block .cite-copy {
  padding: 3px 12px;
  font-size: 12px;
  cursor: pointer;
  background: #fff;
  border: 1px solid #d1d5da;
  border-radius: 4px;
  color: #24292e;
  transition: background 0.15s;
}
.cite-block .cite-copy:hover {
  background: #e9ecef;
}
.cite-block pre {
  margin: 0;
  padding: 12px 16px;
  background: #fff;
  overflow-x: auto;
  font-size: 13px;
  line-height: 1.5;
  border: none;
}
.cite-block pre code {
  font-family: 'SFMono-Regular', Consolas, 'Liberation Mono', Menlo, monospace;
  background: none;
  padding: 0;
}
</style>

<div class="cite-block">
  <div class="cite-header">
    <span>1. Overview Paper</span>
    <button class="cite-copy" onclick="navigator.clipboard.writeText(this.closest('.cite-block').querySelector('code').innerText);this.textContent='Copied!';setTimeout(()=>this.textContent='Copy',2000)">Copy</button>
  </div>
<pre><code>@inproceedings{na-etal-2026-psydefdetect,
  title = "Overview of the PsyDefDetect Shared Task at BioNLP 2026:
           Detecting Levels of Psychological Defense Mechanisms
           in Supportive Conversations",
  author = "Na, Hongbin and Wang, Zimu and Chen, Zhaoming and
            Hua, Yining and Gao, Rena and Yang, Kailai and
            Chen, Ling and Wang, Wei and Ji, Shaoxiong and
            Torous, John and Ananiadou, Sophia",
  booktitle = "The 25th Workshop on Biomedical Natural Language
               Processing and BioNLP Shared Tasks",
  month = jul,
  year = "2026",
  address = "San Diego, USA",
  publisher = "Association for Computational Linguistics",
}</code></pre>
</div>

<div class="cite-block">
  <div class="cite-header">
    <span>2. Survey Paper</span>
    <button class="cite-copy" onclick="navigator.clipboard.writeText(this.closest('.cite-block').querySelector('code').innerText);this.textContent='Copied!';setTimeout(()=>this.textContent='Copy',2000)">Copy</button>
  </div>
<pre><code>@inproceedings{na-etal-2025-survey,
  title = "A Survey of Large Language Models in Psychotherapy:
           Current Landscape and Future Directions",
  author = "Na, Hongbin and Hua, Yining and Wang, Zimu and
            Shen, Tao and Yu, Beibei and Wang, Lilin and
            Wang, Wei and Torous, John and Chen, Ling",
  booktitle = "Findings of the Association for Computational
               Linguistics: ACL 2025",
  month = jul,
  year = "2025",
  address = "Vienna, Austria",
  publisher = "Association for Computational Linguistics",
  url = "https://aclanthology.org/2025.findings-acl.385/",
  doi = "10.18653/v1/2025.findings-acl.385",
  pages = "7362--7376",
}</code></pre>
</div>

<div class="cite-block">
  <div class="cite-header">
    <span>3. Dataset Paper</span>
    <button class="cite-copy" onclick="navigator.clipboard.writeText(this.closest('.cite-block').querySelector('code').innerText);this.textContent='Copied!';setTimeout(()=>this.textContent='Copy',2000)">Copy</button>
  </div>
<pre><code>@inproceedings{na-etal-2026-psydefconv,
  title = "You Never Know a Person, You Only Know Their Defenses:
           Detecting Levels of Psychological Defense Mechanisms
           in Supportive Conversations",
  author = "Na, Hongbin and Wang, Zimu and Chen, Zhaoming and
            Zhou, Peilin and Hua, Yining and Zhou, Grace Ziqi and
            Zhang, Haiyang and Shen, Tao and Wang, Wei and
            Torous, John and Ji, Shaoxiong and Chen, Ling",
  booktitle = "Findings of the Association for Computational
               Linguistics: ACL 2026",
  month = jul,
  year = "2026",
  address = "San Diego, USA",
  publisher = "Association for Computational Linguistics",
}</code></pre>
</div>

## Contact

For questions regarding paper submission, please contact us at [psydefdetect@googlegroups.com](mailto:psydefdetect@googlegroups.com).
