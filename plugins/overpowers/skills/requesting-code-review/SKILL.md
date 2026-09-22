---
name: requesting-code-review
description: Use when a coherent task or batch is ready for independent verification, or before integration that requires review.
---

# Requesting Code Review

Use overpowers:personal-project-team. The default is one independent tester combining requirements/code review and focused verification, followed by controller review. Do not add separate specification and quality reviewers to every task.

1. Define the goal, acceptance criteria, exact constraints and complete change boundary.
2. Identify the actual base/head or uncommitted snapshot, including staged, unstaged and task-owned untracked files. Do not assume HEAD~1 covers all work.
3. Dispatch a separate context using code-reviewer.md or the SDD task-reviewer-prompt.md. The tester may use the same model as the implementer, with capability matched to risk.
4. Read the findings and executed-check evidence. The controller inspects the final diff and decides whether acceptance is justified.
5. For fixes, reuse the implementer and tester; verify affected checks and regressions, not automatically the whole suite.

Reuse an adequate independent pass already completed on the same snapshot. A required whole-branch review still needs the complete branch scope; the existing tester can do it without a second review role.

Keep requests and results concise. A diff package/report artifact is optional unless repository policy requires it. Necessary surrounding source may be read; implementer logs alone cannot replace independent testing.

If independent tools are unavailable, use an authorized external tester or report independent acceptance BLOCKED. Do not disguise controller self-review as independent.

Material correctness, security, data integrity or missing required verification blocks acceptance. Minor polish can be recorded and deferred with a reason. Do not ignore optional CI failures without triage.
