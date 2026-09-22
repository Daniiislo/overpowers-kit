# Scoped Tester Recheck

Resume the same independent tester when practical.

    Previously tested snapshot:
    Findings to resolve and failed attempts per finding:
    Fix snapshot/diff (including uncommitted/untracked changes):
    Implementer explanation and preliminary checks:
    Regression surface or changed assumptions:

Inspect the fixes against the original requirements. Independently rerun each affected failing check and the relevant regression slice. Reuse unaffected evidence only when content, dependencies, configuration and environment remain applicable.

Do not restart an unrelated full review or rerun the full suite without a reason. Do not ignore a newly discovered material correctness/security/data issue merely because it is outside the fix diff: report and let the controller triage its effect and scope.

Keep source/tests/index/branch read-only; normal test artifacts are allowed. Return PASS / FAIL / CONCERNS / BLOCKED with evidence for each finding and the tested snapshot.

Two failed fixes of the same finding require a strategy change; they never authorize accepting an unresolved material defect.
