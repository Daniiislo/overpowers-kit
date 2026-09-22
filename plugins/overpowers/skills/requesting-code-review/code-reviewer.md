# Independent Review and Test Request

This template is the same role as the SDD independent tester, not an extra reviewer.

    Workspace and complete snapshot/change boundary:
    Requirements, constraints and observable acceptance criteria:
    Relevant design/plan:
    Commands/scenarios, environment and specific regression risks:
    Prior evidence (reference, not an expected verdict):

Read ../subagent-driven-development/task-reviewer-prompt.md and follow its independence, read-only, evidence and verdict rules.

Review the full requested scope, including uncommitted/task-owned untracked files if present. Independently run meaningful checks. Prioritize concrete requirement failures and bugs; do not propose speculative architecture or style changes as mandatory.

Return PASS / FAIL / CONCERNS / BLOCKED, tested snapshot, commands/scenarios actually executed, outcomes and omissions, and actionable findings with severity and location. Do not edit source/tests or dispatch more reviewers.

The controller still reviews the final diff and evidence. If this is a whole-branch review, include branch integration behavior, not only the last task's patch.
