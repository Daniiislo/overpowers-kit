---
name: dispatching-parallel-agents
description: Use when two or more bounded tasks can proceed independently without shared writes, sequential decisions, or conflicting resources.
---

# Dispatching Parallel Agents

Parallelize only genuinely independent work. The goal is lower elapsed time without multiplying context, duplicated investigation, or integration risk.

## Decision Rule

Dispatch in parallel when every task has:

- a distinct goal and write boundary;
- enough self-contained context to start;
- no result required by another parallel task;
- no conflicting branch, index, service, account, fixture, migration, or external resource.

Keep work together when failures may share a root cause, agents need the same files, or the first result determines the next decision. Investigate an unknown cluster once before splitting it.

## Dispatch Contract

For each agent provide: purpose, exact scope, relevant decisions and interfaces, acceptance evidence, allowed writes, exclusions, snapshot/branch, and concise expected return. Choose the least costly model likely to handle that task's ambiguity and risk.

Do not dispatch multiple agents to rediscover the same context. Use specialists only for a concrete expertise gap. If independent tooling is unavailable, work sequentially and report the limitation.

## Integration

1. Inspect each result and exact diff.
2. Detect overlapping writes and incompatible assumptions before combining them.
3. Run focused checks for each changed area, then the smallest integration check covering their interaction.
4. Use one independent tester for the coherent integrated batch unless the batches are truly separate products or risk domains.
5. Run a full suite only when repository policy, release scope, broad shared code, or observed risk warrants it.

The controller remains accountable for scope, evidence, unresolved findings, and delivery. Parallel implementers never approve their own work.
