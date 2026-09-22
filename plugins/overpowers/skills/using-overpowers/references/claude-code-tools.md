# Claude Code Tool Notes

Map Overpowers roles to Claude Code's available agent and task tools without
changing the workflow contract in `overpowers:personal-project-team`.

- The main conversation remains Controller and accountable for decisions,
  final diff/evidence review, and authorized delivery.
- Delegate bounded implementation to one or more Implementers only when the
  plan benefits from it. Parallel writes must be independent.
- Use exactly one independent Tester for each coherent task or integrated
  batch. Do not create separate specification and quality reviewers by default.
- Keep the compact checkpoint in the existing plan/task artifact. Do not add a
  disk ledger or review package merely because Claude Code supports nested
  agents.
- Choose model capability by ambiguity, expertise, and blast radius. A cheaper
  model is appropriate only when it remains likely to complete the bounded role
  reliably.

Nested agents are optional. Use them only when the owner explicitly requests
that delegation shape or it materially reduces elapsed time without obscuring
controller accountability. Never insert an extra orchestrator as a routine
cost-saving layer.
