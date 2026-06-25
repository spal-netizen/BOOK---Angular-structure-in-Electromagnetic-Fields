# Phase VIII-I — Verification and scorecard (efficient orchestrator)
param(
    [string]$Root = (Join-Path $PSScriptRoot '..'),
    [switch]$SkipScorecard,
    [switch]$SkipVerify
)
Set-StrictMode -Version Latest
$ErrorActionPreference = 'Stop'
$root = Resolve-Path $Root
$toc = Join-Path $root 'TOC'
$stamp = Get-Date -Format 'yyyy-MM-dd'
$reportPath = Join-Path $toc "VOL-I-PHASE8I-SCORECARD-REPORT.md"

$gates = [ordered]@{
    'VIII-A extended lexicon' = 'VolI-Phase8A-Extended.ps1'
    'VIII-C architecture invisibility' = 'VolI-Phase8C-Architecture-Invisibility.ps1'
    'VIII-D doctrine thinning' = 'VolI-Phase8D-Doctrine-Thinning.ps1'
    'VIII-E physical memory corps' = 'VolI-Phase8E-Physical-Memory.ps1'
    'VIII-F historical threading' = 'VolI-Phase8F-Historical-Threading.ps1'
    'VIII-G Harrington voice (Ch. 1-4)' = $null
    'VIII-H Ch. 3 proof + figure finish' = 'VolI-Phase8H-Proof-Figure-Finish.ps1'
}

$results = @()
$allPass = $true

function Invoke-Gate {
    param([string]$Name, [string]$Script, [hashtable]$Extra = @{})
    $path = Join-Path $root "scripts\$Script"
    $args = @('-NoProfile', '-ExecutionPolicy', 'Bypass', '-File', $path, '-Root', $root, '-VerifyOnly')
    foreach ($k in $Extra.Keys) { $args += "-$k"; if ($Extra[$k] -ne $true) { $args += $Extra[$k] } }
    $out = & powershell @args 2>&1 | Out-String
    $ok = ($LASTEXITCODE -eq 0)
    return [pscustomobject]@{ Gate = $Name; Pass = $ok; Detail = ($out -split "`n" | Where-Object { $_ -match 'PASS|FAIL|count|composite|vignette|Reduction|Frozen' } | Select-Object -Last 3) -join ' | ' }
}

foreach ($name in $gates.Keys) {
    $script = $gates[$name]
    if ($name -eq 'VIII-G Harrington voice (Ch. 1-4)') {
        $gPass = $true
        $detail = @()
        foreach ($ch in 1..4) {
            & powershell -NoProfile -ExecutionPolicy Bypass -File (Join-Path $root "scripts\VolI-Phase8G-Harrington-Voice.ps1") -Root $root -Chapter $ch -VerifyOnly | Out-Null
            $ok = ($LASTEXITCODE -eq 0)
            if (-not $ok) { $gPass = $false }
            $detail += "Ch.$ch=$(if($ok){'PASS'}else{'FAIL'})"
        }
        $results += [pscustomobject]@{ Gate = $name; Pass = $gPass; Detail = ($detail -join '; ') }
        if (-not $gPass) { $allPass = $false }
        continue
    }
    if ($SkipVerify) {
        $results += [pscustomobject]@{ Gate = $name; Pass = $true; Detail = 'skipped' }
        continue
    }
    $r = Invoke-Gate -Name $name -Script $script
    $results += $r
    if (-not $r.Pass) { $allPass = $false }
}

# Live manuscript metrics
$latex = Join-Path $root 'latex'
$body = @(1, 2, 3, 4) | ForEach-Object { [IO.File]::ReadAllText((Join-Path $latex ("ch{0:D2}.tex" -f $_))) } | Out-String
$proofSketches = ([regex]::Matches($body, '\[Proof sketch\]')).Count
$figures = ([regex]::Matches($body, '\\begin\{figure\}')).Count
$vignettes = ([regex]::Matches($body, '\\begin\{physicalvignette\}')).Count
$subsections = ([regex]::Matches($body, '\\subsection\{')).Count

$frozenBefore = [int][IO.File]::ReadAllText((Join-Path $toc 'VOL-I-PHASE8D-DOCTRINE-FROZEN-BASELINE.txt')).Trim()
$frozenAfter = [int][IO.File]::ReadAllText((Join-Path $toc 'VOL-I-PHASE8D-DOCTRINE-FROZEN-AFTER.txt')).Trim()
$doctrineLive = & powershell -NoProfile -ExecutionPolicy Bypass -File (Join-Path $root 'scripts\VolI-Phase8-Doctrine-Count.ps1') -Root $root 2>&1 | Out-String
$doctrineGrand = if ($doctrineLive -match 'GRAND TOTAL:\s*(\d+)') { [int]$Matches[1] } else { 0 }
$doctrineFrozenPct = [math]::Round(100.0 * ($frozenBefore - $frozenAfter) / $frozenBefore, 1)

$scorecardPath = $null
$expertComposite = 'n/a'
if (-not $SkipScorecard) {
    & (Join-Path $root 'scripts\VolI-Nine-Criteria-Scorecard.ps1') -Root $root -SkipVerify
    if ($LASTEXITCODE -ne 0) { $allPass = $false }
    $scorecardPath = Get-ChildItem (Join-Path $toc 'VOL-I-NINE-CRITERIA-SCORECARD-*.md') |
        Where-Object { $_.Name -notmatch 'LOCK' } |
        Sort-Object LastWriteTime -Descending | Select-Object -First 1
    $scText = if ($scorecardPath) { [IO.File]::ReadAllText($scorecardPath.FullName) } else { '' }
    if ($scText -match '\|\s*\*\*Composite.*\|\s*\*\*~81\*\*\s*\|\s*\*\*~(\d+(?:\.\d+)?)\*\*') {
        $expertComposite = $Matches[1]
    }
}

$gateRows = ($results | ForEach-Object {
    "| $($_.Gate) | $(if ($_.Pass) { '**PASS**' } else { '**FAIL**' }) | $($_.Detail) |"
}) -join "`n"

$report = @"
# Phase VIII-I — Verification and Scorecard

**Date:** $stamp  
**Gate:** $(if ($allPass) { '**PASS**' } else { '**FAIL**' })  
**Orchestrator:** ``scripts/VolI-Phase8I-Scorecard.ps1``

---

## I. Phase VIII automated gates

| Phase | Result | Notes |
|-------|--------|-------|
$gateRows

---

## II. Live manuscript metrics (Ch. 1–4)

| Metric | Value |
|--------|------:|
| ``[Proof sketch]`` markers | $proofSketches |
| Figure floats | $figures |
| Physical vignettes | $vignettes |
| Subsections | $subsections |
| Doctrine tokens (live) | $doctrineGrand |
| Doctrine frozen audit | $frozenBefore → $frozenAfter (**$doctrineFrozenPct%**) |

---

## III. Nine-criteria scorecard

$(if ($scorecardPath) { "**Report:** ``$($scorecardPath.Name)``  `n**Expert composite:** ~$expertComposite/100 (target ≥92)" } else { '_Skipped (-SkipScorecard)_' })

---

## IV. Human gate (author)

| Item | Status |
|------|--------|
| 30-page blind Harrington read-aloud | **AUTHOR** |
| External referee response | **OPEN** (Phase IX) |

---

## V. Re-run

``````powershell
.\scripts\VolI-Phase8I-Scorecard.ps1
.\scripts\VolI-Phase8I-Scorecard.ps1 -SkipVerify   # scorecard only
``````

*Does not substitute external referee sign-off or masterpiece-safe certification.*
"@

[IO.File]::WriteAllText($reportPath, $report, [Text.UTF8Encoding]::new($false))
Write-Host "Wrote $reportPath"

if (-not $allPass) {
    Write-Host 'FAIL: Phase VIII-I scorecard gate.'
    $results | Where-Object { -not $_.Pass } | ForEach-Object { Write-Host "  FAIL: $($_.Gate)" }
    exit 1
}
if ([double]$expertComposite -lt 92 -and $expertComposite -ne 'n/a') {
    Write-Host "FAIL: expert composite $expertComposite below 92 target."
    exit 1
}
Write-Host "PASS: Phase VIII-I scorecard (expert composite ~$expertComposite/100)."
exit 0
