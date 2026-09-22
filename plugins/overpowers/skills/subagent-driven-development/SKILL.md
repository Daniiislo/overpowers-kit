---
name: subagent-driven-development
description: Use when executing approved implementation work with delegated agents in the current session.
---

# Subagent-Driven Development

Use overpowers:personal-project-team. Default to one implementer, one independent tester, then controller acceptance per coherent task or batch. Combine specification review, code review, and focused testing in the tester's pass.

## Start or Resume

- Read applicable repository rules, approved design/plan, current status and relevant source.
- Confirm current scope, workspace, delivery authority, and existing changes. Reuse approved decisions; do not restart brainstorming for an approved task.
- Read the plan's latest checkpoint and reconcile it with the actual files/commits before resuming. Never mark a task done based only on a prior agent claim.
- Resolve material missing requirements before dispatch. Routine implementation details belong to the controller.
- Use an existing suitable branch/workspace. Invoke using-git-worktrees only when isolation is required or useful; not for each micro-task.

## Dispatch a Coherent Unit

A unit must have a meaningful acceptance boundary. Group tightly coupled micro-steps; split tasks that can be independently accepted. Check immediate dependencies, not a mandatory all-pairs task matrix.

Use implementer-prompt.md with a self-contained brief. Include exact interfaces and decisions from dependencies, not the entire conversation. Keep independent agents' write scopes disjoint; serialize shared files.

Default commit owner is the controller after acceptance. If the repository requires implementer commits, allow atomic worker commits, but they are not approval. Name commit ownership in the brief.

Select model capability by task uncertainty and consequence using the profile and actual runtime support. Do not force the strongest model for final review or spawn overlapping reviewer roles.

## Independent Verification

Use task-reviewer-prompt.md. A tester must be a separate context from the implementer; the same model is allowed. If the controller implements, it cannot also supply the independent verdict.

Identify the entire task snapshot before testing:

- Committed work: explicit base and head covering the task, not blindly HEAD~1.
- Uncommitted work: base commit plus staged/unstaged changes and task-owned untracked files. Review their actual contents, not only a commit diff.
- Keep the tested write scope stable until the verdict. Record a snapshot identifier (for example content hashes) if not committed; inspect status before and after testing.

The tester reads enough source to assess the behavior, independently runs meaningful checks, and reports evidence. Prior implementer tests inform scope but do not replace independent verification.

The controller then inspects the final diff, requirements coverage, findings, and evidence. A tester PASS is input, not automatic merge approval. No additional spec-only or quality-only subagent by default.

If independent tools are unavailable, use an authorized external tester or report independent acceptance BLOCKED. Implementation may be ready, but must not be described as independently verified.

## Findings and Fixes

Send actionable findings to the same implementer. Reuse the tester for a scoped recheck using re-review-prompt.md. Investigate cause before every fix; after two failed fixes of the same finding, change strategy through focused diagnosis, smaller scope, or qualified help.

Never park a material defect merely to meet a round/token cap. Newly discovered material issues outside the fix diff still need triage. Do not silently expand scope to fix unrelated issues.

Keep a short checkpoint in the existing plan/task artifact: status, snapshot, checks/verdict, open findings and attempts, next action, active agent IDs when useful. Do not create a separate ledger or review package by default. Honor required repository reports without duplicating them.

## Integration

Run broader verification at a coherent dependency checkpoint and before integration when required; reuse still-valid evidence. A repository-required whole-branch independent review may reuse the tester, but must cover the complete branch and integration behavior.

Controller reviews the final integration diff and applies finishing-a-development-branch within authorization. Preserve required evidence before cleanup. Close agents no longer needed.

The scripts in this directory remain optional legacy utilities. They are not required gates and commit-range review packages do not cover uncommitted work.
