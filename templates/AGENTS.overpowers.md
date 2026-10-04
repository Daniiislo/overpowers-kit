## Software project workflow

- For non-trivial software planning, implementation, testing, review, and delivery, invoke `overpowers:personal-project-team` as the owner's reusable default profile. Skip it for simple, low-risk, self-contained work that the controller can implement and verify directly.
- Apply the locally personalized Overpowers skills for process guidance. Scale artifacts and verification to uncertainty and risk; do not add duplicate reviewers, ledgers, repeated full-suite runs, approval menus, or new worktrees without a concrete need.
- Keep plans decision-complete for the intended implementer. For smaller models, make error-prone behavior explicit: interfaces, ordered logic, failure branches, invariants, security/data boundaries, examples, and verification.
- When `personal-project-team` applies, require one independent tester per coherent task or batch plus controller review. Simple tasks may use direct controller verification. Repository-specific mandatory gates still apply.
- Existing scope and delivery authorization persist until changed. Ask again only for a material product decision, new external authority, irreversible risk, credential, or genuine blocker.
