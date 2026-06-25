# Phase VIII-F — Historical threading (§2.0 / §3.0 / §4.0)
param(
    [string]$Root = (Join-Path $PSScriptRoot '..'),
    [switch]$Apply,
    [switch]$VerifyOnly
)
Set-StrictMode -Version Latest
$ErrorActionPreference = 'Stop'
$root = Resolve-Path $Root
$latex = Join-Path $root 'latex'
$reportPath = Join-Path $root 'TOC/VOL-I-PHASE8F-HISTORICAL-THREADING-REPORT.md'

$anchors = @(
    @{ File = 'ch02.tex'; Label = 'sec:ch20'; Marker = 'PHYSICAL-HISTORY:sec:ch20' }
    @{ File = 'ch03.tex'; Label = 'sec:ch30'; Marker = 'PHYSICAL-HISTORY:sec:ch30' }
    @{ File = 'ch04.tex'; Label = 'sec:ch40'; Marker = 'PHYSICAL-HISTORY:sec:ch40' }
)

$requiredCites = @('maxwell1873', 'poynting1884', 'stratton1941', 'chu1948', 'harrington2001', 'pal2026')
$thesisPattern = 'finite geometry limits realizable, accessible, and observable angular electromagnetic complexity'
$banPatterns = @(
    'Chapter~\d+ will',
    'Chapters~\d+ will',
    'the volume arc',
    'forward pointer',
    'certification chain',
    'progressive hierarchy'
)

function Get-HistoryParagraph {
    param([string]$Marker)
    $inserts = Join-Path $latex 'vol-i-historical-threading-inserts.tex'
    if (-not (Test-Path $inserts)) { return $null }
    $raw = [IO.File]::ReadAllText($inserts)
    $m = [regex]::Match($raw, "(?ms)% BEGIN $([regex]::Escape($Marker))\r?\n(?<body>.*?)% END $([regex]::Escape($Marker))")
    if (-not $m.Success) { return $null }
    return $m.Groups['body'].Value.Trim()
}

function Test-HistoryParagraph {
    param([string]$Body)
    $issues = [System.Collections.Generic.List[string]]::new()
    foreach ($c in $requiredCites) {
        if ($Body -notmatch [regex]::Escape($c)) { $issues.Add("missing cite: $c") }
    }
    if ($Body -notmatch [regex]::Escape($thesisPattern)) { $issues.Add('missing thesis sentence') }
    $sentences = @([regex]::Split($Body, '(?<=[.!?])\s+') | Where-Object { $_.Trim().Length -gt 15 })
    if ($sentences.Count -lt 8 -or $sentences.Count -gt 12) {
        $issues.Add("sentence count $($sentences.Count) (want 8-12)")
    }
    foreach ($b in $banPatterns) {
        if ($Body -match $b) { $issues.Add("banned phrase: $b") }
    }
    if ($Body -match '\\begin\{(equation|align|gather)') { $issues.Add('displayed equation in history paragraph') }
    return $issues
}

function Extract-HistoryBlock {
    param([string]$Text, [string]$Marker)
    $m = [regex]::Match($Text, "(?ms)% $([regex]::Escape($Marker))\r?\n(?<body>.*?)(?=\r?\n% PHYSICAL-MEMORY:|% PHYSICAL-HISTORY:|\\begin\{physicalvignette\}|\\subsection\{)")
    if (-not $m.Success) { return $null }
    return $m.Groups['body'].Value.Trim()
}

$results = @()
$pass = $true

foreach ($a in $anchors) {
    $path = Join-Path $latex $a.File
    $text = [IO.File]::ReadAllText($path)
    $body = Extract-HistoryBlock -Text $text -Marker $a.Marker
    if (-not $body) {
        $pass = $false
        $results += [pscustomobject]@{ Anchor = $a.Label; Status = 'MISSING'; Issues = 'no PHYSICAL-HISTORY block' }
        continue
    }
    $issues = @(Test-HistoryParagraph -Body $body)
    if ($issues.Count -gt 0) { $pass = $false }
    $results += [pscustomobject]@{
        Anchor = $a.Label
        Status = if ($issues.Count -eq 0) { 'PASS' } else { 'FAIL' }
        Issues = ($issues -join '; ')
    }
}

$report = @"
# Phase VIII-F — Historical threading report

**Date:** $(Get-Date -Format 'yyyy-MM-dd')  
**Gate:** $(if($pass){'**PASS**'}else{'**FAIL**'})

## Contract

One paragraph at each chapter opening (§2.0, §3.0, §4.0):

Maxwell → Poynting → Stratton → Chu → Harrington → Volume~I thesis

- 8–12 sentences; no displayed equations
- History leads to **measurement**, not volume arc
- Markers: ``% PHYSICAL-HISTORY:sec:ch20|30|40``

## Results

| Anchor | Status | Issues |
|--------|--------|--------|
$($results | ForEach-Object { "| ``$($_.Anchor)`` | $($_.Status) | $($_.Issues) |" } | Out-String)

## Insert archive

``latex/vol-i-historical-threading-inserts.tex``

## Verify

``````powershell
.\scripts\VolI-Phase8F-Historical-Threading.ps1 -VerifyOnly
``````

"@
[IO.File]::WriteAllText($reportPath, $report, [Text.UTF8Encoding]::new($false))

foreach ($r in $results) {
    Write-Host "$($r.Anchor): $($r.Status) $(if($r.Issues){'— '+$r.Issues})"
}

if (-not $pass) {
    Write-Host 'FAIL: Phase VIII-F historical threading gate.'
    exit 1
}
Write-Host 'PASS: Phase VIII-F historical threading gate.'
exit 0
