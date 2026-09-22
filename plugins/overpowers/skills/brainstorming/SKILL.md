---
name: brainstorming
description: Use before new or materially changed product behavior when intent, scope, UX, architecture, or acceptance decisions remain unresolved.
---

# Brainstorming Ideas Into Designs

Turn the request into an approved, testable design with the least process that resolves real uncertainty. Use overpowers:personal-project-team.

Do not implement before the material intent is understood and the owner has approved the proposed direction. Existing explicit authorization and approved artifacts remain valid; do not ask again for unchanged decisions.

## Choose the Path

- **Direct:** routine mechanical or corrective work whose expected behavior is already explicit and whose implementation pattern exists. Inspect context, restate the intended result and proceed. No separate design approval or spec.
- **Bounded design:** a scoped behavior change with a few open decisions. Inspect context, ask material questions in one compact round when possible, present a short design and obtain one approval. No spec file unless repository policy requires it.
- **Architectural design:** new project/subsystem, cross-cutting contract change, meaningful data/security decision, or several interacting unknowns. Use the full design/spec flow.
- **Spike:** feasibility investigation whose output is knowledge. State the question, limits and disposable nature; obtain approval only if it consumes meaningful resources or causes side effects. Keeping spike code requires reclassification.

Classify by ambiguity, dependency count and failure impact—not by file count. Upgrade when hidden complexity changes the design materially. Do not downgrade solely to save tokens.

## Understand Efficiently

Read product docs, relevant code and recent context before questioning. Reuse settled facts. Ask questions that change scope, behavior, trade-offs or acceptance; group related questions so the owner can answer once. Avoid one-message-per-question rituals unless each answer genuinely determines the next question.

For a large request, decompose it into independently valuable increments and design the first deliverable. Identify:
- user outcome and out of scope;
- current behavior and constraints;
- observable success criteria and critical failure cases;
- interfaces/data flow and ownership/authorization boundaries;
- risks, migration/rollback needs and verification approach.

## Explore and Recommend

For consequential choices, give the recommended approach and meaningful alternatives with concrete trade-offs. One approach is enough when alternatives add no decision value. Do not manufacture three options.

Keep the design proportional. A bounded design usually states behavior, affected boundary, error handling and test approach in a few paragraphs. An architectural design covers components, interfaces, data flow, failure handling, security/data ownership, compatibility and staged delivery.

Present the design as one coherent review unless sections contain independent decisions. The owner approves material direction once; minor wording fixes do not trigger repeated approval loops.

## Durable Spec

Create a spec for architectural work, long-lived/multi-session work, or when repository policy requires one. Use the repository's location; otherwise default to docs/overpowers/specs/YYYY-MM-DD-<topic>-design.md.

A spec defines what and why, not step-by-step implementation. Include:
- goal, users and boundaries;
- decisions and rejected alternatives where useful;
- behavior, interfaces and data;
- failure/security/ownership constraints;
- acceptance criteria and verification strategy;
- rollout/migration when applicable.

Self-review once for gaps, contradictions, vague acceptance and accidental scope expansion. Fix inline. Ask the owner to review only if the written spec introduces or changes a material decision not already approved. Then use writing-plans.

Visual aids are optional and used only when they materially clarify UI/layout, architecture or data flow.
