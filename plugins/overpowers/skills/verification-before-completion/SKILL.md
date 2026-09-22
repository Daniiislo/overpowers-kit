---
name: verification-before-completion
description: Use before claiming work is complete, fixed, tested, or ready to integrate, and before commit, PR, merge, or release decisions.
---

# Verification Before Completion

No success claims without applicable evidence. Freshness is about the verified snapshot and conditions, not whether a command ran in the current message.

## Evidence Check

Before a claim:
1. State what must be true: acceptance criteria, regression surface, repository-required gates.
2. Identify the actual snapshot: commit(s), or base plus the content of staged/unstaged/task-owned untracked files.
3. Inspect the evidence: executed command or manual scenario, actual result/exit status, coverage and relevant environment.
4. Check applicability: code, tests, dependencies, configuration, environment, base/merge result and integration assumptions must still match what was verified.
5. Run missing or invalidated checks; reuse valid evidence without ceremonial reruns.
6. Make a claim no broader than the evidence. Report failed, skipped, unavailable and unverified checks.

A saved successful log is evidence, not proof for later different code. A new commit with identical tested content need not invalidate evidence; a changed merge result may. Evaluate what changed and retest the affected surface.

## Proportionate Coverage

- Bounded behavior change: focused automated tests plus relevant build/typecheck and affected user flow.
- UI/auth/integration change: exercise the actual affected interaction when feasible; unit tests alone may not establish end-to-end success.
- Docs/config/skills: check structure, references, correctness and affected scenarios. Do not run unrelated application suites merely for a wording change.
- Coherent batch: relevant integration checks.
- Milestone/release/cross-cutting change: appropriate broad suites and critical flows, plus repository-required checks.

Derive commands from the project, not guesses. Check subprocess exit codes. A running process, partial log, passing lint, or implementer assertion does not establish a successful build/test.

The independent tester must execute meaningful checks itself in a separate context. The controller may use that evidence without rerunning identical checks. If unavailable, say independent acceptance is BLOCKED; self-checks remain self-checks.

## Failures and Limitations

Material correctness/security/data failures and missing required checks block acceptance. Time, token budgets and fix-round limits do not waive them. Triage optional CI failures too. A justified nonblocking finding can be recorded and deferred; do not claim it was fixed.

If baseline/environment failures are unrelated, record evidence and their impact. Continue safe unaffected work when possible, but do not claim the affected path verified. Ask for a decision only when new authority, a material choice, or a real external blocker is required.

Before cleanup, preserve compact evidence in the existing plan/task/PR artifact. Never fabricate a PASS from a review verdict lacking executed verification.
