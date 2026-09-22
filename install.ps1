[CmdletBinding()]
param(
    [switch]$SkipGlobalProfile,
    [switch]$KeepLegacyPersonal
)

$ErrorActionPreference = 'Stop'
$repoRoot = (Resolve-Path -LiteralPath $PSScriptRoot).Path
$marketplacePath = Join-Path $repoRoot '.agents\plugins\marketplace.json'
$pluginPath = Join-Path $repoRoot 'plugins\overpowers'
$profileTemplatePath = Join-Path $repoRoot 'templates\AGENTS.overpowers.md'

foreach ($requiredPath in @($marketplacePath, $pluginPath, $profileTemplatePath)) {
    if (-not (Test-Path -LiteralPath $requiredPath)) {
        throw "Missing required kit path: $requiredPath"
    }
}

if (-not (Get-Command codex -ErrorAction SilentlyContinue)) {
    throw 'Codex CLI was not found on PATH.'
}

$marketplace = Get-Content -Raw -Encoding UTF8 -LiteralPath $marketplacePath | ConvertFrom-Json
$manifestPath = Join-Path $pluginPath '.codex-plugin\plugin.json'
$manifest = Get-Content -Raw -Encoding UTF8 -LiteralPath $manifestPath | ConvertFrom-Json
if ($marketplace.name -ne 'overpowers-kit' -or $manifest.name -ne 'overpowers') {
    throw 'Unexpected marketplace or plugin identity.'
}

$configured = (& codex plugin marketplace list --json | ConvertFrom-Json).marketplaces |
    Where-Object { $_.name -eq 'overpowers-kit' }

if (-not $configured) {
    & codex plugin marketplace add $repoRoot --json
    if ($LASTEXITCODE -ne 0) { throw 'Failed to register the Overpowers marketplace.' }
} else {
    $configuredRoot = $configured[0].root
    if ($configuredRoot -and (Test-Path -LiteralPath $configuredRoot)) {
        $resolvedConfiguredRoot = (Resolve-Path -LiteralPath $configuredRoot).Path
        if ($resolvedConfiguredRoot -ne $repoRoot) {
            throw "Marketplace 'overpowers-kit' already points to another location: $resolvedConfiguredRoot"
        }
    }
}

& codex plugin add 'overpowers@overpowers-kit' --json
if ($LASTEXITCODE -ne 0) { throw 'Failed to install Overpowers.' }

if (-not $SkipGlobalProfile) {
    $configuredCodexHome = [Environment]::GetEnvironmentVariable('CODEX_HOME')
    if ([string]::IsNullOrWhiteSpace($configuredCodexHome)) {
        $userProfile = [Environment]::GetFolderPath('UserProfile')
        $configuredCodexHome = Join-Path $userProfile '.codex'
    }

    New-Item -ItemType Directory -Path $configuredCodexHome -Force | Out-Null
    $agentsPath = Join-Path $configuredCodexHome 'AGENTS.md'
    $beginMarker = '<!-- BEGIN OVERPOWERS KIT MANAGED BLOCK -->'
    $endMarker = '<!-- END OVERPOWERS KIT MANAGED BLOCK -->'
    $template = (Get-Content -Raw -Encoding UTF8 -LiteralPath $profileTemplatePath).Trim()
    $managedBlock = "$beginMarker`r`n$template`r`n$endMarker"
    $existingContent = if (Test-Path -LiteralPath $agentsPath) {
        Get-Content -Raw -Encoding UTF8 -LiteralPath $agentsPath
    } else {
        '# Personal rules'
    }

    $pattern = '(?s)' + [regex]::Escape($beginMarker) + '.*?' + [regex]::Escape($endMarker)
    if ([regex]::IsMatch($existingContent, $pattern)) {
        $updatedContent = [regex]::Replace($existingContent, $pattern, $managedBlock)
    } else {
        $updatedContent = $existingContent.TrimEnd() + "`r`n`r`n" + $managedBlock + "`r`n"
    }

    $utf8NoBom = New-Object System.Text.UTF8Encoding($false)
    [System.IO.File]::WriteAllText($agentsPath, $updatedContent, $utf8NoBom)
    Write-Output "Updated global profile: $agentsPath"
}

if (-not $KeepLegacyPersonal) {
    $pluginList = (& codex plugin list | Out-String)
    if ($pluginList -match '(?m)^overpowers@personal\s+installed') {
        & codex plugin remove 'overpowers@personal' --json
        if ($LASTEXITCODE -ne 0) { throw 'Failed to remove the legacy personal installation.' }
    }
}

$finalList = (& codex plugin list | Out-String)
if ($finalList -notmatch '(?m)^overpowers@overpowers-kit\s+installed, enabled') {
    throw 'Overpowers installation could not be verified.'
}

Write-Output 'Overpowers is installed and enabled. Start a new Codex task to load the refreshed skills.'
