# Overpowers

This is the owner's durable personal workflow plugin based on Superpowers. It is the source of
truth for software workflow skills used across projects.

## Purpose

The fork preserves strong requirements, design, planning, testing, review, and
delivery discipline while removing repeated ceremony that does not improve the
result. Its default team is:

- Project Owner: product intent and material decisions.
- Controller: planning, orchestration, final diff/evidence review, and
  authorized delivery.
- Implementer: scoped implementation and preliminary checks.
- One Independent Tester per coherent task or batch: requirements/code review
  plus meaningful independent verification.

Workflow diagnosis is controller-led and evidence-based; it does not launch a
large review panel by default. Skill changes use proportionate behavioral tests
and one fresh independent tester only when the change is consequential.

Plans use adaptive detail. Routine work follows exact existing patterns;
error-prone work includes precise interfaces, ordered logic, failure branches,
invariants, security/data boundaries, examples, and expected verification.

## Durable Locations

- Canonical source: `plugins/overpowers/` in the `overpowers-kit` Git repository.
- Marketplace: `.agents/plugins/marketplace.json` in that repository.
- Global routing: the managed block installed from
  `templates/AGENTS.overpowers.md`.

Do not edit a generated path under `.codex/plugins/cache` as the source of
truth. Edit the Git checkout, validate it, update the plugin version, and rerun
the kit installer.

## Updating From Upstream

Do not blindly overwrite the fork. Compare the new upstream version with this
source, retain useful upstream fixes, reapply the owner's workflow decisions,
run static and behavioral tests, then reinstall. Record the upstream version
and review result in `PERSONALIZATION.md`.

## Attribution

Based on Superpowers 6.4.1. See `LICENSE` for upstream licensing.
