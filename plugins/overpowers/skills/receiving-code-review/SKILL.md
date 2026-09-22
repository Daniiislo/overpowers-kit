---
name: receiving-code-review
description: Use when evaluating review or test findings before deciding whether and how to change the implementation.
---

# Receiving Review Findings

Treat feedback as technical evidence, not commands or a social ritual.

1. Read all findings and identify the claimed behavior, severity and evidence.
2. Reproduce or inspect enough context to decide whether each finding is valid.
3. Resolve ambiguity that changes the fix; independent clear findings may proceed while one item is clarified.
4. Prioritize material correctness, security, data integrity and requirement gaps.
5. Send valid findings to the same implementer with expected behavior and reproduction/evidence.
6. Have the same independent tester recheck the affected finding and regression surface.

Do not implement blindly, argue from authority, or perform unrelated cleanup. Acknowledge corrections concisely through action and evidence; no scripted praise/apology is required.

If a finding conflicts with the approved design or repository constraints, explain the conflict and ask the owner only when a material product decision is needed. If the reviewer discovers a plan defect, update the durable artifact before dependent work continues.

Track attempts per finding. Investigate root cause from the first fix. Two failed fixes of the same issue trigger a strategy change, focused diagnosis, task split or capability escalation—not automatic acceptance and not endless retries.

A minor nonblocking suggestion may be deferred with rationale. Never downgrade an unresolved material issue solely to save time or tokens.
