---
name: using-git-worktrees
description: Use when work needs isolation from the current checkout, parallel tasks need separate writable state, or repository policy requires a worktree.
---

# Using Git Worktrees

Isolation is a tool, not a mandatory per-task ceremony. Use the existing suitable workspace unless conflicts, parallel writes, risky experiments, or repository policy require separation.

## Inspect Before Creating

Check status, current branch, worktree list and repository instructions. Preserve unrelated changes. Detect existing linked worktrees and submodules accurately using Git metadata; do not infer from directory naming alone.

Reuse an appropriate existing worktree. Honor already expressed preferences without asking again. If no safe workspace exists and creating one changes the user's intended setup, explain the choice before proceeding.

## Create Only When Needed

Prefer supported native workspace tools when the host manages isolation. Otherwise use git worktree with an explicit base, unique branch, and verified destination.

For a project-local destination, ensure it is excluded from Git before creating it. Respect repository policy on ignore changes; do not force a standalone housekeeping commit when one is unnecessary. Do not change global ignore settings or unrelated repository files.

Do not overwrite an existing directory or branch. If sandbox/permissions block creation, do not bypass them or silently work in an unsafe shared checkout. Use a safe alternative if available; otherwise report the blocker.

## Setup and Baseline

Read documented setup commands and lockfiles. Reuse working dependencies; install only when needed and use the project's package manager and frozen/locked mode where appropriate. Do not blindly run npm install or rewrite lockfiles.

Establish the relevant baseline with focused checks or applicable existing evidence. Full-suite baseline runs are needed only when impact or repository policy requires them. Record pre-existing failures and their effect; continue safe unaffected work rather than treating every unrelated failure as a reason to restart setup.

Never call the baseline clean if it is unverified or failed.

## Cleanup

Only remove a task-owned worktree after its work and required evidence are safely preserved and cleanup is authorized. Inspect status, resolve its exact path and use supported worktree removal. No force-discard or broad recursive deletion. Follow finishing-a-development-branch for delivery.
