# Personalization Record

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
