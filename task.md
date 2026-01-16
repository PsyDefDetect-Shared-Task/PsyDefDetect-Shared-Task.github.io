---
layout: page
title: Task Overview
permalink: /task/
nav_key: task
---

Psychological defenses are the "immune system" of the mind, shaping what speakers disclose and how they accept or resist help. Despite their critical role in mental health and counseling, defensive functioning remains largely unmodeled in current emotional support conversation systems.

This shared task invites participants to bridge the gap between clinical theory and NLP by analyzing the PSYDEFCONV dataset. Participants will work with multi-turn dialogues to identify the specific defense level of a target utterance given its context. The goal is to develop models that can recognize subtle, context-dependent defensive maneuvers—ranging from adaptive coping to immature distortion.

## Example
```
Input (dialogue excerpt)
Supporter: Hello, how are you today?
Seeker: yea good but lil lazy could you please help me to be concentrated on work and new job preparation to get a job.
Supporter: Sounds like you need a little help staying on track and feeling more productive?
Seeker (target utterance): yes. i am so attracted to baby... i think nobody will take care of baby as much as i can. 
                           So unable to concentrate on job preparation.

Output (defense label)
Level 1 Action Defenses
```
The model reads the dialogue plus the target utterance and returns one label from the table above. In this case the seeker diverts frustration about job preparation into protective, action-oriented statements about the baby, so the correct prediction remains *Action Defenses*.


## Data and Labels
This task utilizes **PSYDEFCONV**, the first conversational dataset annotated with defense levels based on the DMRS. The dataset is constructed from a stratified subset of the ESConv corpus to ensure diverse coverage of problem types and emotions. The corpus contains 200 dialogues and 4,709 total utterances, including 2,336 help-seeker turns annotated for defense levels.

Participants must classify utterances into 9 categories, comprising seven hierarchical levels of defensive maturity and two auxiliary labels.

<table class="label-table">
  <colgroup>
    <col class="label-table__col-level" />
    <col class="label-table__col-mechanisms" />
    <col />
  </colgroup>
  <thead>
    <tr>
      <th>Level</th>
      <th>Mechanisms</th>
      <th>Definition</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>0 · No Defenses</td>
      <td>N/A</td>
      <td>Functional utterances that maintain conversational flow without engaging conflict.</td>
    </tr>
    <tr>
      <td>1 · Action Defenses</td>
      <td>Passive Aggression, Help-Rejecting Complaining, Acting Out</td>
      <td>Distress is released by acting on the environment instead of reflecting.</td>
    </tr>
    <tr>
      <td>2 · Major Image-Distorting</td>
      <td>Splitting (self/other), Projective Identification</td>
      <td>Reduces anxiety via all-good/all-bad distortions of self or other.</td>
    </tr>
    <tr>
      <td>3 · Disavowal Defenses</td>
      <td>Denial, Rationalization, Projection, Autistic Fantasy</td>
      <td>Rejects threatening reality by denying, excusing, blaming, or fantasizing.</td>
    </tr>
    <tr>
      <td>4 · Minor Image-Distorting</td>
      <td>Devaluation/Idealization (self or other), Omnipotence</td>
      <td>Softer distortions temporarily inflate or deflate self-esteem.</td>
    </tr>
    <tr>
      <td>5 · Neurotic Defenses</td>
      <td>Repression, Dissociation, Reaction Formation, Displacement</td>
      <td>Keeps unacceptable motives out of awareness; feelings surface indirectly.</td>
    </tr>
    <tr>
      <td>6 · Obsessional Defenses</td>
      <td>Isolation of Affect, Intellectualization, Undoing</td>
      <td>Uses excessive logic or symbolic acts to separate feelings from events.</td>
    </tr>
    <tr>
      <td>7 · High-Adaptive Defenses</td>
      <td>Affiliation, Altruism, Anticipation, Humor, Self-Assertion, Self-Observation, Sublimation, Suppression</td>
      <td>Mature coping that integrates emotion and thought to channel affect constructively.</td>
    </tr>
    <tr>
      <td>8 · Needs More Information</td>
      <td>N/A</td>
      <td>Label used when an utterance is too ambiguous or lacks context.</td>
    </tr>
  </tbody>
</table>

For a detailed definition, check out our [Annotation Handbook]({{ '/Psychological Defense Mechanism Coding Handbook.pdf' | relative_url }})!

## Baseline and Evaluation Metrics

Baseline runs and official metrics are published on our [CodaBench Page](https://www.codabench.org/competitions/12124/).
