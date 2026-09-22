---
name: diagnosing-overpowers
description: Use when the Overpowers workflow is slow, repetitive, contradictory, unexpectedly expensive, ignores an approved plan, or applies the wrong verification depth.
---

# Diagnosing Overpowers

Find the smallest workflow correction supported by actual session and file evidence. Diagnosis is read-only unless the owner also asks for changes.

## Method

1. Identify expected behavior, observed behavior, and the concrete cost or failure. Ask one compact clarification round only when one of these is materially unknown.
2. Inspect the relevant task history, loaded skill versions, global/project instructions, plan, agent briefs, evidence, and plugin source. Treat cache files as generated copies.
3. Trace the first decision that diverged. Classify it as discovery/routing, conflicting authority, missing context, excessive decomposition, model mismatch, verification duplication, delivery authorization, or tool limitation.
4. Distinguish a skill defect from an agent execution error or a repository-specific mandatory rule.
5. Propose the narrowest durable correction and a representative scenario that would prevent recurrence.

Start with controller analysis. Use one fresh independent analyst/tester only when evidence is ambiguous or the proposed change affects roles, authority, security, completion, or delivery behavior. Do not automatically launch a panel of reviewers, create an issue, or generate a diagnostic bundle.

## Report

Return:

- problem and user impact;
- evidence with precise source locations or task events;
- root cause and why existing guidance allowed it;
- minimal correction, compatibility impact, and validation scenario;
- remaining uncertainty or repository rule that cannot be overridden globally.

Do not expose secrets or copy sensitive session content unnecessarily. Scrub any durable diagnostic artifact.
