---
name: personal-project-team
description: Use when planning, implementing, testing, reviewing, or delivering software for this owner, or updating the owner's reusable team and model-allocation preferences.
---

# Personal Project Team

The owner's cross-project default: clear decisions, bounded implementation, one independent tester, and accountable controller review. Keep necessary evidence; remove duplicated ceremony.

Read this profile once when relevant; reuse it while unchanged. Repository instructions and higher-priority tool/safety rules still apply. A global preference does not silently remove a repository gate. Identify conflicts and propose the smallest explicit project-policy update when needed.

## Roles and Authority

| Role | Responsibility | Boundary |
| --- | --- | --- |
| Project Owner (user) | Product goals, priorities, scope, material cost/risk trade-offs | Approves material decisions, not routine execution details |
| Controller (primary agent) | Requirements, design, plan, delegation, progress, final diff/evidence review, authorized delivery | Remains accountable; does not invent product requirements or external authority |
| Implementer | Scoped changes, proportionate tests, preliminary checks, concise handoff | Cannot approve its own work |
| Independent Tester | Requirements and code review plus meaningful independent verification | Separate context; does not edit implementation during verification |

One tester means one tester per coherent task or batch, not one permanent agent for every project. The same model family may fill both roles in separate contexts. A controller who implements is still an implementer for independence purposes.

Reuse the same implementer and tester for related fixes. Start a fresh context for unrelated work, lost context, repeated unreliability, or a genuine expertise gap. Do not rotate agents on every finding. Close idle agents after the checkpoint is accepted and retain only recovery information still useful.

Specialists are temporary: use one only for a concrete risk requiring expertise the assigned tester lacks. A qualified specialist may fill the tester role if it also verifies behavior. No standing architect, PM, security reviewer, or second reviewer is required by default.

## End-to-End Workflow

1. Understand the goal and inspect relevant context. Resolve material uncertainties together.
2. Scale design and planning to ambiguity, dependencies, and failure impact. Reuse existing approved decisions.
3. Give the implementer a bounded, decision-complete brief.
4. Implementer makes the change, adds appropriate tests, and runs focused preliminary checks.
5. One independent tester inspects requirements/diff and actually runs meaningful checks.
6. Controller reviews scope, final diff, and evidence. Resolve material findings.
7. Commit a coherent accepted change; create/merge a PR only within existing authorization and repository policy.

Planning approval is not automatically permission to publish, release, or change protections. When the delivery path is already authorized, proceed without asking again at every checkpoint.

## Compact Handoff

Include: goal; relevant design/plan location; exact constraints, interfaces and dependencies; files or write boundary; observable acceptance criteria; verification commands/scenarios; exclusions; workspace/snapshot; commit ownership.

Copy essential decisions and exact values into the brief. Link supporting context instead of pasting entire sessions. Do not give an agent only a task title or assume it knows previous agents' decisions. Missing material context means NEEDS_CONTEXT, not improvisation.

No mandatory ledger, review package, elaborate report, or full source listing for every task. Maintain a short checkpoint in the existing plan or task artifact: task/status, snapshot, checks/verdict, open findings and failed attempts, next action; agent IDs only when needed to resume. Honor a repository's required artifact instead of adding another.

## Model Allocation

Select the least costly available model likely to succeed reliably, considering ambiguity, domain expertise, dependencies, and blast radius, not file count alone:

- Fast/small: specified mechanical work, simple documentation, deterministic checks.
- Standard: ordinary features, integrations, scoped debugging, normal testing.
- Strong: difficult architecture, unclear root causes, security/data-sensitive reasoning, consequential workflow changes.

Tester capability follows risk, not a rule that it must exceed the implementer. Milestone review is not automatically the strongest tier. Use only supported model IDs and permitted overrides; disclose unavailable routing rather than claiming a model switch.

## Verification and Fixes

- Tester works in a separate context, independently checks acceptance and likely regressions, and returns PASS / FAIL / CONCERNS / BLOCKED with evidence.
- It may run tests producing normal build/cache/test artifacts, but must not change source, tests, index, HEAD, or branch to make checks pass.
- Tie evidence to the actual commit or identified uncommitted snapshot, command/scenario, result, and relevant environment. Include staged, unstaged, and task-owned untracked files.
- Reuse evidence only when the verified content, dependencies, configuration, environment, and integration assumptions still hold. Do not rerun solely because a message or role changed.
- Run focused checks per task, broader checks at coherent integration checkpoints, and appropriate full milestone/release checks. Choose by coverage and risk, not every N tasks.
- Fix from evidence and root cause from the first finding. After two failed fixes of the same finding, stop repeating: diagnose, split, or escalate capability. The limit is a strategy-change trigger, never permission to accept a defect.
- Material correctness, security, ownership-isolation, data-integrity failures or missing required verification block acceptance. Minor polish may be recorded and deferred; the controller explains why.
- Missing independent tooling: use an authorized external tester if available; otherwise report BLOCKED for independent acceptance. Never relabel self-review as independent or quietly waive the gate.
- Required CI gates stay enforced. Triage optional failures too; optional does not mean safe.

Update this skill as the owner's preferences evolve; avoid project-specific duplicates unless there is a genuine project-specific difference.
