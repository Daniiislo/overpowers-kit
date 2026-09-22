---
name: executing-plans
description: Use when executing an approved plan directly or resuming planned work in a session.
---

# Executing Plans

Use overpowers:personal-project-team. Read the design, plan, repository instructions, current changes and latest checkpoint. Reconcile reported progress with actual files. Do not rebuild an already approved plan or re-ask routine execution choices.

Choose the simplest supported execution mode within the owner's authorization:
- Delegated implementation: use subagent-driven-development.
- Inline implementation: the controller implements, but an independent tester still verifies the coherent task/batch.

For each unit, confirm dependencies and observable acceptance criteria, implement within scope, run focused preliminary checks, obtain independent verification, and review the final diff/evidence. Use the SDD tester and recheck templates without creating an unnecessary implementer subagent.

Track concise progress in the existing plan or task artifact: status, snapshot, evidence, findings/attempts and next action. No default ledger or elaborate report package. Use repository-mandated artifacts where required.

Group tightly coupled steps into meaningful verification boundaries. Run broader checks at integration checkpoints, not every micro-step. Prefer tests first for new behavior and regressions; apply proportionate verification to docs/config.

For findings, investigate cause, fix, and recheck the affected surface. After two unsuccessful fixes of the same finding, change strategy rather than repeat. Material defects and missing required verification block acceptance.

If a material requirement is unresolved, stop that unit and ask the controller/owner as appropriate. If independent verification is unavailable, report BLOCKED for acceptance, not a self-approved completion.

Use existing suitable isolation; invoke using-git-worktrees only when needed. After accepted work, use finishing-a-development-branch and honor the authorized delivery path without redundant approval menus. Do not infer release or external authority from plan approval alone.
