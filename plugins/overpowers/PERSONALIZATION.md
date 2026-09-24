# Personalization Record

## 2026-09-24 — Antigravity CLI worker protocol

- Codex remains the Controller while `agy` may serve as the bounded Implementer and independent Tester.
- Implementer and Tester use separate explicitly bound Antigravity projects/conversations; related fixes and rechecks resume their original role conversations.
- Headless runs use streamed JSON, durable stdout/stderr capture, narrow command permissions, and controller-side parsing of tool events and the terminal result.
- Exit code `0` or result status `SUCCESS` is insufficient when actions were denied, the response is empty, required checks did not execute, or the Tester changed the snapshot.
- Windows command grants use narrowly scoped regex rules where literal prefix matching does not cover arguments.
- Antigravity delegation is reserved for coherent tasks because each conversation has material context/quota overhead.

## 2026-09-22 — Overpowers 1.0 baseline

- Upstream base: Superpowers 6.4.1.
- Personal plugin and namespace: `overpowers`.
- Owner goal: reduce time and token cost without weakening product correctness.
- Early phases use adaptive depth: direct, bounded design, architectural
  design, or spike.
- Plans remain decision-complete for smaller implementers and become more
  specific where inference is risky.
- Execution uses one Implementer, one independent Tester per coherent
  task/batch, then Controller review.
- The Tester combines requirements review, code-quality review, and actual
  focused verification.
- Related fixes reuse the same Implementer and Tester.
- Two failed fixes of the same material finding trigger a strategy change, not
  acceptance or an arbitrary fifth loop.
- Full suites, worktrees, separate ledgers, review packages, approval menus,
  and extra specialists are conditional rather than universal.
- Verification evidence is tied to the actual snapshot and can be reused while
  its relevant code, configuration, dependencies, environment, and integration
  assumptions remain unchanged.
- Repository-specific mandatory gates and existing authorization remain in
  force.
- Workflow diagnosis starts with one controller analysis rather than a standing
  multi-agent panel.
- Skill testing is proportional: consequential authority/workflow changes get
  representative pressure scenarios and one fresh independent tester; minor
  wording or metadata changes do not require repeated multi-agent trials.
- New durable project artifacts default to `docs/overpowers/specs/` and
  `docs/overpowers/plans/`; existing projects migrate deliberately so links and
  history remain valid.

## Maintenance Rule

The plugin source in this directory is canonical. Generated cache copies are
disposable. Every upstream refresh must be reviewed rather than copied over
this fork automatically.
