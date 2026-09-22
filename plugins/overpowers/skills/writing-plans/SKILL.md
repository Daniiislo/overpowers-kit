---
name: writing-plans
description: Use when approved requirements need ordered implementation tasks that another agent, including a smaller model, can execute reliably.
---

# Writing Plans

Create a decision-complete implementation plan without prewriting routine production code. Use overpowers:personal-project-team. Read the approved spec/requirements, repository instructions, current implementation and relevant established patterns.

Save durable plans where the repository requires; otherwise use docs/overpowers/plans/YYYY-MM-DD-<feature-name>.md for multi-session work. A bounded one-session change may use an in-chat/task brief instead of a plan file.

## Plan Depth

Detail follows inference risk:

- **Always specify:** purpose, exact scope/files or boundaries, dependencies, interfaces/types, inputs/outputs, ordered behavior, observable acceptance criteria, verification commands/scenarios and exclusions.
- **For error-prone areas:** spell out invariants, authorization/ownership rules, transaction/retry/idempotency behavior, failure branches, data-loss risks, compatibility and cleanup.
- **When prose leaves room for a wrong implementation:** add concise pseudocode, exact payload/schema examples, test cases with expected results, or a focused code fragment.
- **For routine mechanics:** point to the exact existing pattern/file and let the implementer write the code. Do not paste boilerplate or complete implementations merely to make the plan look detailed.

Never leave a smaller model to invent product semantics, security boundaries, destructive behavior, error handling or cross-task interfaces.

## Task Boundaries

A task is a coherent deliverable that can be implemented and independently verified. Group setup, schema, implementation, tests and docs that only make sense together. Split when outputs form a stable dependency or one part can be accepted/rejected independently.

Do not force 2–5 minute microsteps, arbitrary file limits, a commit after every tiny action, or a reviewer per checklist item. Record dependency order and parallel-safe tasks explicitly.

## Plan Header

Use:

```markdown
# [Feature] Implementation Plan

**Goal:** [observable result]
**Source:** [approved spec/requirements]
**Architecture:** [short approach and key boundaries]
**Constraints:** [exact project-wide values/rules]
**Delivery:** [branch/commit/PR policy if relevant]
```

## Task Template

```markdown
### Task N: [Coherent outcome]

**Purpose:** [...]
**Depends on:** [task/interface or none]
**Files/boundary:** [create/modify/test paths; ownership of shared files]
**Interfaces and data:** [exact signatures, types, payloads, input/output]
**Behavior:**
1. [ordered happy path]
2. [failure/edge branches and required result]
**Critical details:** [invariants, permissions, transactions, pitfalls; omit if none]
**Implementation guidance:** [exact reference pattern; pseudocode/example only where inference is risky]
**Acceptance:**
- [observable criterion]
**Verification:**
- `exact command` → [expected evidence]
- [manual/integration scenario where needed]
**Out of scope:** [...]
**Commit:** [coherent commit intent; actual commit owner follows workflow/repo policy]
```

Include exact code only when an interface is fixed, a migration is delicate, an algorithm is easy to misread, or a regression test best communicates behavior. Avoid placeholders such as “handle errors appropriately.”

## Self-Review

Before dispatch:
1. Every approved requirement maps to a task and acceptance check.
2. Cross-task names, types and ordering agree.
3. Failure/security/data-integrity cases are explicit where relevant.
4. Commands exist in the project or are clearly identified as new.
5. A less-capable implementer, given only its task plus named references, can proceed without inventing a material behavior.
6. The plan does not duplicate settled context or prescribe unnecessary ceremony.

Fix gaps once inline. If safe execution still requires judgment beyond the intended implementer, increase model capability or split the task; do not compensate with vague verbosity.

## Execution Handoff

After saving, report the path and begin the already authorized execution mode:
- Delegated: overpowers:subagent-driven-development.
- Inline: overpowers:executing-plans, with an independent tester at the coherent checkpoint.

Ask for a mode choice only when it is genuinely unresolved and materially affects cost or workflow. Do not mandate fresh implementers, two-stage reviewers or new worktrees per task.
