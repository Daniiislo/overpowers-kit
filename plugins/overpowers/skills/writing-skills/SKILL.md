---
name: writing-skills
description: Use when creating, changing, validating, or publishing reusable agent skills or this personal workflow plugin.
---

# Writing Skills

Create skills that are easy to discover, concise to load, and reliable under realistic use. Scale testing to the consequence of the change; do not turn every wording edit into a research project.

## Authoring Contract

- Use a lowercase kebab-case directory and a `SKILL.md` with valid YAML frontmatter.
- `name` uses letters, numbers, and hyphens. `description` says only when the skill should trigger, preferably beginning with `Use when...`.
- Put the operational rule in the body, not only in the description.
- Keep the main file compact. Move long references, templates, and reusable scripts into supporting files and link them directly.
- State observable decisions, boundaries, failure handling, and stopping conditions. Avoid biography, repeated rationale, and multiple examples that teach the same point.
- Reference another skill by namespace when it is genuinely required; do not force-load unrelated material.

## Proportionate Workflow

1. Inspect the current skill, its call sites, plugin manifest, and applicable owner/repository rules.
2. Define the behavior that must change and one or more scenarios that would reveal failure.
3. For a new or consequential rule, record a baseline from the current/control version when practical. For a mechanical correction, inspection may be sufficient.
4. Make the smallest coherent edit, including supporting references or scripts only when needed.
5. Validate structure and links, then run representative behavioral scenarios.
6. Have one fresh independent tester assess consequential workflow changes. The controller reviews the final diff and evidence.
7. Update version/history, commit the canonical source, reinstall if needed, and verify discovery in a new session.

## Test Depth

| Change | Minimum useful evidence |
| --- | --- |
| Typo, link, metadata, formatting | Static validation plus one discovery or rendering check |
| Clarification without authority change | Static validation plus 1–2 representative scenarios |
| Role, authority, security, completion, delegation, or delivery behavior | Baseline/control when practical, 3–5 pressure scenarios total, one fresh independent tester, controller review |
| Script or executable helper | Focused automated tests for changed behavior plus one integration invocation |

Do not require five repetitions per wording variant, a new tester for every file, deletion-and-restart rituals, or an upstream pull request. Add repetitions only when results are inconsistent or the consequence justifies them.

## Behavioral Scenarios

Use concrete prompts with realistic pressure: limited tokens, existing authorization, a failed required check, missing context, an authentication/security boundary, or two unsuccessful fixes. Judge observable behavior, not whether the response repeats skill terminology.

A good scenario states the role, available evidence, requested outcome, constraints, and the incorrect shortcut being tested. Preserve raw outputs only when they help diagnose a failure; summarize otherwise.

## Overpowers Source and Deployment

The canonical plugin is `plugins/overpowers/` in the `overpowers-kit` Git checkout. Generated `.codex/plugins/cache` copies are disposable.

For Overpowers changes:

1. Edit canonical source with `apply_patch`.
2. Run plugin and per-skill validators; inspect broken links and stale namespace references.
3. Run the proportionate behavioral test above.
4. Update the plugin version for a stable release, or use a cachebuster only for local iteration.
5. Rerun the kit installer to install `overpowers@overpowers-kit` and verify it is enabled.
6. Start a new task so the refreshed skill catalog is loaded.

## Completion Standard

A skill change is complete when its trigger is discoverable, instructions are internally consistent, referenced resources exist, representative scenarios behave as intended, the canonical source is versioned, and the installed plugin resolves to that source version. Report skipped checks and uncertainty truthfully.
