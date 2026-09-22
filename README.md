# Overpowers Kit

Portable, private distribution of the owner's Overpowers software-delivery
workflow for Codex. It packages the plugin, marketplace metadata, and a safe
Windows installer that preserves unrelated global agent rules.

## Install on Windows

Prerequisites: Git, GitHub CLI authenticated for the private repository, and
Codex CLI available on `PATH`.

```powershell
gh repo clone Daniiislo/overpowers-kit
Set-Location overpowers-kit
powershell -ExecutionPolicy Bypass -File .\install.ps1
```

The installer registers this checkout as marketplace `overpowers-kit`, installs
`overpowers@overpowers-kit`, updates only the managed Overpowers block in the
global Codex `AGENTS.md`, removes the older `overpowers@personal` installation
when present, and verifies the result. Start a new Codex task after installation.

Use `-SkipGlobalProfile` to leave global instructions unchanged, or
`-KeepLegacyPersonal` when intentionally retaining the older personal install.

## Update

```powershell
git pull --ff-only
powershell -ExecutionPolicy Bypass -File .\install.ps1
```

For a Git-configured marketplace, `codex plugin marketplace upgrade
overpowers-kit` can refresh its snapshot before reinstalling the plugin.

## Repository Layout

- `.agents/plugins/marketplace.json`: portable marketplace catalog.
- `plugins/overpowers/`: canonical plugin source.
- `templates/AGENTS.overpowers.md`: managed global routing profile.
- `install.ps1`: idempotent Windows installation and migration.

Generated Codex cache directories, credentials, local runtime artifacts, and
project-specific files do not belong in this repository.

## Versioning

Stable releases use Semantic Versioning tags. `v1.0.0` is the first portable
release. Update the plugin version and release tag for future stable changes.

## Upstream

Overpowers is a personalized derivative of Superpowers 6.4.1. See the plugin's
`LICENSE`, `README.md`, and `PERSONALIZATION.md` for attribution and workflow
decisions.
