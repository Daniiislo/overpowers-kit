# Codex Runtime Adaptation

Use the tools actually available in the current session. Do not assume a particular API generation, model preset, configuration key or capability from this document.

## Delegation and Model Choice

- Respect runtime restrictions on spawning and model overrides. A skill does not override tool authorization.
- Use a clean child context for bounded briefs when supported. Read the actual schema for isolation options; do not invent fork or lifecycle arguments.
- Select from the current supported model list when model routing is authorized. Otherwise inherit the permitted default and disclose any limitation relevant to cost/capability.
- An independent tester needs a context distinct from the implementer, not a different model family.
- Do not modify machine-level configuration merely because multi-agent tools are unavailable. Report the limitation and use an authorized external tester, or leave independent acceptance BLOCKED.

## Agent Lifecycle

Reuse implementer/tester contexts for related fixes through the available message/resume operation. Keep only agents needed for current work; close completed agents when their checkpoint is accepted if the runtime supports closing. Record useful agent IDs in the existing task checkpoint.

Do local non-overlapping work while a child runs. Prefer completion notifications; wait only when its result is needed and no useful local work remains. Respect host wait limits and progress-update cadence; avoid repeated busy polling and repeated long silent waits.

## Workspace and Delivery

Inspect the actual Git state using commands appropriate to the host shell: status, branch, worktree list, git directory/common directory and superproject when relevant.

Reuse suitable existing isolation. Worktrees are an optional isolation mechanism unless repository policy requires one, not a mandatory cost per task.

Use supported native workspace/branch operations when available. If the host blocks delivery operations, preserve the work and explain the exact user action needed. Never infer that all detached checkouts prohibit branch creation, and never bypass a real restriction.

Read using-git-worktrees or finishing-a-development-branch when those operations are relevant. Keep secrets out of configuration inspection and logs.
