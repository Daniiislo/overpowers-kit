# Antigravity CLI Worker Protocol

Use this protocol when Codex is the Controller and Antigravity CLI (`agy`) supplies the bounded Implementer and independent Tester.

## Preflight

1. Refresh `PATH` when `agy` was installed after the host process started, then verify `agy --version`.
2. Authenticate once in interactive `agy`; headless runs use cached credentials.
3. Confirm the approved plan names the exact workspace, write scope, verification commands, exclusions, and snapshot.
4. Configure only the fine-grained command permissions required by that task. Workspace file reads/writes are normally allowed; headless commands otherwise soft-deny because no prompt can be shown.
5. On Windows, prefer narrow regex rules because literal command-prefix matching may not cover arguments. Examples:

```json
{
  "permissions": {
    "allow": [
      "command(regex:git status.*)",
      "command(regex:git diff.*)",
      "command(regex:node --test.*)"
    ]
  }
}
```

Derive test/build rules from the repository's documented commands. Prefer project-scoped rules; use global rules only when the owner intentionally wants the same grant across projects. Remove temporary task-specific grants after the worker checkpoint. Do not grant broad shell, network, MCP, push, destructive Git, or global filesystem access merely to avoid a prompt. Remember that an allowed test command executes repository-controlled code. Do not use `--dangerously-skip-permissions` for normal project work.

## Reliable Invocation

Start an unrelated role or task with a new Antigravity project bound explicitly to the intended workspace:

```powershell
agy -p $brief `
  --new-project `
  --add-dir $workspace `
  --disable-slash-commands `
  --effort low `
  --output-format stream-json `
  --print-timeout 10m
```

Add `--mode=accept-edits` for the Implementer. Omit it for a read-only Tester. Increase effort or timeout only when task risk and observed runtime justify it.

Use `--new-project --add-dir` even when the process working directory is correct. Without explicit project binding, a headless session may resolve files against Antigravity's scratch workspace. `--disable-slash-commands` reduces unrelated skill expansion; the brief must also prohibit MCP, memory, web, browser, subagents, and artifacts unless the task explicitly needs them.

Capture stdout and stderr separately. If the host can yield before `agy` finishes, run it through a waiting wrapper and redirect stdout to an NDJSON log so the child process and terminal result are not lost. Keep temporary prompts and logs outside the task's accepted source diff.

## Implementer Contract

Give the Implementer a decision-complete brief containing:

- role and goal;
- exact workspace and writable files/directories;
- behavior, interfaces, invariants, and failure cases;
- exact allowed verification and optional read-only Git commands;
- explicit exclusions, including no commit unless assigned;
- required handoff: status, files changed, commands/results, risks;
- instruction to return `BLOCKED` after any denied action or unavailable required check.

Require dedicated file-editing tools for source changes. Record the terminal `conversation_id`. For related fixes, resume only that Implementer with `--conversation <id>` and include the Tester's exact finding and required recheck.

## Independent Tester Contract

Start the Tester with a separate new conversation; never continue or import the Implementer's conversation. Give it the requirement, identified snapshot/diff, allowed read-only commands, and expected verdict format.

The Tester must not edit source, tests, index, HEAD, configuration, prompts, or runner files. Require one verdict: `PASS`, `FAIL`, `CONCERNS`, or `BLOCKED`, with executed evidence and findings. Hash or otherwise snapshot task-owned files before and after the run; any unexplained change invalidates independence. For related fixes, resume the same Tester conversation for the scoped recheck.

## Controller Acceptance

Parse the final `result` event rather than trusting only process exit code. Accept a worker result only when all of these hold:

- the process completed and a terminal `result` event exists;
- `status` is `SUCCESS` and `response` is non-empty;
- `denied_actions` is absent or empty;
- no tool step ended in `ERROR` unless the final verdict explicitly and correctly reports `BLOCKED`;
- tool calls stayed within the brief and permission boundary;
- required verification actually ran and its output supports the handoff;
- the Controller independently inspects the diff and reruns proportionate checks;
- the Tester's before/after snapshot is unchanged.

Headless permission denial may still exit `0` and report `SUCCESS` with an empty response. Treat that combination as failure, correct the narrow permission or project-binding cause, and retry deliberately. Never report completion from status alone.

If stdout is missing, first check whether the child process is still running and whether task files changed. Do not immediately launch a duplicate Implementer that could race on the same workspace. Preserve/capture the original result when possible; otherwise inspect the snapshot, diagnose the runner, and start a fresh conversation only after the prior process has exited.

## Cost and Failure Boundaries

Antigravity can consume a large fixed context per headless conversation. Batch related work into one coherent task and reuse role conversations for fixes/rechecks. Prefer direct controller work for tiny deterministic edits.

Quota exhaustion, authentication failure, missing terminal output after runner recovery, repeated workspace misbinding, or inability to grant a suitably narrow required permission blocks delegation. Fall back to another authorized worker or report independent acceptance as blocked; never widen permissions silently.
