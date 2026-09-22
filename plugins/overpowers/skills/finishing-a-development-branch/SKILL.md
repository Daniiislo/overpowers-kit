---
name: finishing-a-development-branch
description: Use when implementation reaches an integration checkpoint and needs final review, commit, PR, merge, or cleanup.
---

# Finishing a Development Branch

Follow overpowers:personal-project-team, repository policy, and the owner's existing delivery authorization. Do not restart a generic options menu when the path is already decided.

## 1. Establish the Actual State

Inspect branch, status, target/base and full change boundary. Preserve unrelated changes. A detached HEAD or externally managed worktree is not proof that every branch operation is forbidden: use supported runtime operations and respect actual restrictions.

Confirm the independent tester covered the required scope, including a whole-branch review if the repository mandates one. The controller inspects the exact final diff and evidence, resolves material findings, and checks for unintended sensitive data.

## 2. Verify Readiness

Use verification-before-completion. Reuse applicable evidence instead of rerunning every suite. Run missing integration/milestone checks appropriate to the changes and repository requirements.

Do not merge with failed required checks or unresolved material defects. Investigate optional security/test failures; optional does not establish safety. Never bypass branch protections or disable checks to obtain a green result.

If work cannot be accepted, report what is ready, what is blocked and why. Leave recoverable changes intact.

## 3. Deliver Within Authority

- Commit only scoped files after inspecting the staged diff. Use repository commit conventions; never stage all unrelated work.
- If PR/merge is authorized, use the required target, PR template and merge strategy. Reuse an existing matching PR rather than duplicate it.
- If authority is missing, stop at the authorized boundary and ask one concise question about the missing delivery choice. Plan approval alone does not grant push, merge, release or publish rights.
- Check the remote PR head, target and current required-check results before merge. Reconcile any concurrent changes.
- After merge, confirm the resulting remote commit/state. If the integration content/assumptions changed from the tested snapshot, run relevant follow-up checks before claiming verified integration.
- Release/publish only when specifically within scope; merging is not automatically a release.

## 4. Cleanup and Handoff

Remove only task-owned temporary branches/worktrees when repository policy and authorization permit. Verify exact paths/ownership and preserve uncommitted work and needed evidence. Never recursively delete a broad workspace or use a force-discard to tidy up.

Close no-longer-needed agents and update the existing plan/task record. Report outcome, commits/PR if any, verified coverage, known limitations and the next useful step. Do not claim completion while mandatory acceptance is blocked.
