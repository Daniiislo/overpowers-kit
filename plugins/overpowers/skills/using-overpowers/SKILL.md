---
name: using-overpowers
description: Use when starting work to select only the skills and workflow depth that materially help the current request.
---

# Using Overpowers

<SUBAGENT-STOP>
If dispatched as a bounded Implementer or Tester, follow the supplied brief
and role template. Do not restart the controller's skill-selection workflow.
</SUBAGENT-STOP>

Check applicable skills before acting. Invoke a named skill or one whose trigger clearly matches the request. Do not invoke unrelated skills merely because there is a remote possibility they apply.

For software work with this owner, use overpowers:personal-project-team as the default role, delegation, verification and model-routing profile. Repository instructions and direct user requirements take priority. Skills guide execution; they do not create authority to mutate external state, push, merge, release, or bypass policy.

## Selection Order

1. Understand the request and applicable instructions.
2. Choose the smallest set of process skills that changes how the work should be done.
3. Add domain skills only when their expertise is needed.
4. Read each selected skill fully, announce it briefly, then follow it at the depth appropriate to risk.

Common routing:
- New or materially changed behavior with unresolved design decisions: brainstorming.
- Approved multi-step work: writing-plans, then executing-plans or subagent-driven-development.
- Bug or failed check: systematic-debugging.
- Completion/integration claim: verification-before-completion and, when delivering a branch, finishing-a-development-branch.
- Editing skills: writing-skills.
- Workflow feels slow, repetitive, contradictory, or unexpectedly expensive: diagnosing-overpowers.

Do not restart brainstorming/spec/planning when an approved artifact already covers the current scope. Do not load every referenced skill in advance; load it when its phase begins. Reuse unchanged decisions and evidence.

If instructions conflict, follow the higher-priority source and report the material conflict. A skill may be adapted when the user explicitly requests a leaner workflow, but never by hiding failed checks, waiving security/data integrity, or misrepresenting verification.

Platform-specific references under references/ are consulted only when their platform operation is relevant.
