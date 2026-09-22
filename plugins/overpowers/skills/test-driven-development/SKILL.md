---
name: test-driven-development
description: Use when implementing new logic, changing behavior, fixing a regression, or refactoring behavior that needs executable protection.
---

# Test-Driven Development

Use tests to define and protect behavior. Prefer a short red-green-refactor cycle for new logic and bug fixes; scale test depth to consequence and the project's testability.

## Default Cycle

1. Name the observable behavior and the realistic production break the test should catch.
2. Write the smallest meaningful test and run it.
3. Confirm it fails for the expected missing/wrong behavior, not setup or syntax.
4. Implement the smallest sound change.
5. Run the focused test, then the relevant regression slice.
6. Refactor only while evidence stays green.

For a bug, reproduce it first whenever practical. For an existing untested implementation, do not delete working code as a ritual: characterize current behavior, add a regression test that can demonstrate the defect, then fix it. Record when a true pre-fix failure cannot be produced safely.

## When Tests Add Value

Automate business logic, authorization, state transitions, parsing/validation, API contracts, data transformations, error branches, regressions and risky refactors.

A new test is usually unnecessary for human prose, generated output, formatting-only changes, dependency metadata, trivial declarative wiring already covered by an integration check, or throwaway spikes. Verify those through the smallest meaningful structural/build/manual scenario instead. Repository requirements still apply.

For UI/integration behavior, choose the lowest level that proves the real contract. Add an end-to-end check when lower-level tests cannot establish the user flow.

## Good Tests

Read writing-good-tests.md when writing/changing tests or mocks.

- Assert externally meaningful behavior using independently derived expected values.
- Prefer real components; mock only slow, nondeterministic or external boundaries.
- Include the critical happy path and failure/edge cases identified by the plan.
- Avoid exact private structure, duplicated implementation logic and coverage-only tests.
- Keep setup proportionate and deterministic.

## Exceptions and Legacy Constraints

If a test framework does not exist, adding one is outside scope, or the behavior can only be verified destructively/externally, state the limitation and use a focused alternative such as a disposable script, contract check, build/typecheck or manual scenario. Do not claim automated coverage.

Exploration may precede a test when needed to understand an unknown API; keep it disposable, then write the behavior test before the retained change when practical.

Tests written after implementation are still valuable but not TDD. Say so truthfully; do not discard sound work merely to recreate ceremony.

## Completion

Evidence must cover the changed behavior and relevant regression surface. A focused task does not require the full suite unless impact or repository policy warrants it. Independent tester verification and controller review still follow overpowers:personal-project-team.
