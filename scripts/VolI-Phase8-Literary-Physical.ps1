# Phase VIII — Literary-Physical Master Pass orchestrator
param(
    [string]$Root = (Join-Path $PSScriptRoot '..'),
    [switch]$NoOpen,
    [switch]$SkipBuild
)
Set-StrictMode -Version Latest
$ErrorActionPreference = 'Stop'
$root = Resolve-Path $Root

Write-Host '=== Phase VIII-B: front matter (Preface, Notation, Glossary, Bibliography) ==='
Write-Host 'Manual pass applied: preface, notation-conventions, glossary.'

Write-Host '=== Phase VIII-A: extended zero-tolerance lexicon (Ch. 1--4) ==='
& (Join-Path $root 'scripts\VolI-Phase8A-Extended.ps1') -Root $root -Apply
if ($LASTEXITCODE -ne 0) { exit $LASTEXITCODE }

Write-Host '=== Phase VIII-C: architecture invisibility ==='
& (Join-Path $root 'scripts\VolI-Phase8C-Architecture-Invisibility.ps1') -Root $root -Apply
if ($LASTEXITCODE -ne 0) { exit $LASTEXITCODE }

Write-Host '=== Phase VIII-D: doctrine thinning (verify) ==='
& (Join-Path $root 'scripts\VolI-Phase8D-Doctrine-Thinning.ps1') -Root $root -VerifyOnly
if ($LASTEXITCODE -ne 0) { exit $LASTEXITCODE }

Write-Host '=== Phase VIII-E: physical memory corps (verify) ==='
& (Join-Path $root 'scripts\VolI-Phase8E-Physical-Memory.ps1') -Root $root -VerifyOnly
if ($LASTEXITCODE -ne 0) { exit $LASTEXITCODE }

Write-Host '=== Phase VIII-F: historical threading (verify) ==='
& (Join-Path $root 'scripts\VolI-Phase8F-Historical-Threading.ps1') -Root $root -VerifyOnly
if ($LASTEXITCODE -ne 0) { exit $LASTEXITCODE }

Write-Host '=== Phase VIII-H: Ch. 3 proof finish + figure merge (verify) ==='
& (Join-Path $root 'scripts\VolI-Phase8H-Proof-Figure-Finish.ps1') -Root $root -VerifyOnly
if ($LASTEXITCODE -ne 0) { exit $LASTEXITCODE }

Write-Host '=== Phase VIII-A (Ch. 1--4): extended zero-tolerance lexicon (verify) ==='
& (Join-Path $root 'scripts\VolI-Phase8A-Extended.ps1') -Root $root -VerifyOnly
if ($LASTEXITCODE -ne 0) { exit $LASTEXITCODE }

Write-Host '=== Phase VIII-G: Harrington voice pass (Ch. 1--4, verify) ==='
foreach ($ch in 1..4) {
    & (Join-Path $root 'scripts\VolI-Phase8G-Harrington-Voice.ps1') -Root $root -Chapter $ch -VerifyOnly
    if ($LASTEXITCODE -ne 0) { exit $LASTEXITCODE }
}

if (-not $SkipBuild) {
    Write-Host '=== Build revised Volume I ==='
    $buildParams = @{
        LatexDir  = (Join-Path $root 'latex')
        ReviewDir = (Join-Path $root 'review')
    }
    if ($NoOpen) { $buildParams['NoOpen'] = $true }
    & (Join-Path $root 'scripts\Build-VolumeI-Final.ps1') @buildParams
    if ($LASTEXITCODE -ne 0) { exit $LASTEXITCODE }
}

Write-Host 'PASS: Phase VIII literary-physical pass complete.'

Write-Host '=== Phase VIII-I: verification and scorecard ==='
& (Join-Path $root 'scripts\VolI-Phase8I-Scorecard.ps1') -Root $root
if ($LASTEXITCODE -ne 0) { exit $LASTEXITCODE }

exit 0
