# Implementer Brief

Fill the fields with decisions, not just a task title.

    Role: Implementer
    Workspace and starting snapshot:
    Goal and design/plan reference:
    Requirements, exact constraints and dependency interfaces:
    Ordered behavior, inputs/outputs and failure branches:
    Invariants, authorization/data boundaries and risky pitfalls:
    Exact pattern, pseudocode or examples where inference is risky:
    In-scope files/write boundary:
    Out of scope:
    Observable acceptance criteria:
    Verification commands/scenarios and relevant environment:
    Commit owner: controller by default, or repository-required implementer

Read relevant source before editing. Report NEEDS_CONTEXT before making a material assumption. Implement only this unit; preserve unrelated changes. Do not dispatch other agents.

The brief must be detailed enough for the assigned model. Follow named repository patterns for routine mechanics, but never invent product semantics, permissions, destructive behavior, retry/transaction rules, or cross-task interfaces. If a required field is irrelevant, the controller should say so rather than leave an ambiguous blank.

Add/update behavior tests proportionate to risk, preferably test-first for new logic and regressions. Run focused preliminary verification. Full-suite runs are not mandatory for every task unless repository policy or the change's impact requires them.

Perform a short self-check of the diff, scope and potential secrets. Do not claim independent approval. Do not commit unless the brief assigns commit ownership; never push, merge, or publish from this brief alone.

Return concise READY_FOR_TEST / NEEDS_CONTEXT / BLOCKED, changed files and snapshot/commit, checks and results, deviations, and remaining concerns. Use an artifact only when required or helpful for recovery; no mandatory elaborate report.

For a fix, reproduce/understand the finding, make the smallest sound correction, and report changed behavior and checks. Reuse the existing context. If the same finding survives two fixes, explain the failed hypotheses and request a changed strategy, not more blind attempts.
