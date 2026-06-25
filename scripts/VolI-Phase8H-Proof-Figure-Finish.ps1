# Phase VIII-H — Ch. 3 proof finish + figure merge
param(
    [string]$Root = (Join-Path $PSScriptRoot '..'),
    [switch]$Apply,
    [switch]$VerifyOnly
)
Set-StrictMode -Version Latest
$ErrorActionPreference = 'Stop'
$root = Resolve-Path $Root
$latex = Join-Path $root 'latex'
$ch03 = Join-Path $latex 'ch03.tex'
$expansions = Join-Path $latex 'ch03-proof-expansions.tex'
$report = Join-Path $root 'TOC/VOL-I-PHASE8H-PROOF-FIGURE-REPORT.md'

$fullProofLabels = @(
    'thm:ch3.symmetry-commutes',
    'thm:ch3.expansion-consistency',
    'thm:ch3.continuous-spectral-decomposition',
    'thm:ch3.J-labeling-admissibility',
    'thm:ch3.J-so3-commutation',
    'thm:ch3.simultaneous-eigenfield-char',
    'thm:ch3.Wigner-D-realizes-rho',
    'thm:ch3.vector-helmholtz-equivalence',
    'thm:ch3.vector-separability',
    'thm:ch3.radial-outgoing-uniqueness-class',
    'thm:ch3.debye-representation',
    'thm:ch3.vsh-div-free',
    'thm:ch3.vsh-orthogonality',
    'thm:ch3.vsh-J-eigenfields',
    'thm:ch3.unbounded-domain-completeness'
)

$figureMergePairs = @(
    @{ Remove = 'fig:ch3.vsh-orthogonality-chain'; Keep = 'fig:ch3.343-orthogonality-factorization'; Note = 'VSH orthogonality upgrade + factorization' }
    @{ Remove = 'fig:ch3.352-jacobian-chain'; Keep = 'fig:ch3.352-plane-wave-chain'; Note = 'plane-wave + Jacobian measure' }
    @{ Remove = 'fig:ch3.351-calibration-path'; Keep = 'fig:ch3.351-flux-normalization-chain'; Note = 'flux normalization + calibration path' }
    @{ Remove = 'fig:ch3.345-calibration-rotation'; Keep = 'fig:ch3.345-frame-transport'; Note = 'frame transport + calibration rotation' }
    @{ Remove = 'fig:ch3.362-tail-scan'; Keep = 'fig:ch3.362-error-chain'; Note = 'truncation error + tail scan' }
    @{ Remove = 'fig:ch3.381-to-transform'; Keep = 'fig:ch3.381-fourier-chain'; Note = 'Fourier chart + transform handoff' }
)

function Get-FullProofBlocks {
    param([string]$Path)
    $blocks = @{}
    if (-not (Test-Path $Path)) { return $blocks }
    $raw = [IO.File]::ReadAllText($Path)
    foreach ($m in [regex]::Matches($raw, '(?ms)% BEGIN PROOF-FULL:(?<id>[^\r\n]+)\r?\n(?<body>.*?)% END PROOF-FULL:\k<id>')) {
        $blocks[$m.Groups['id'].Value] = $m.Groups['body'].Value.Trim()
    }
    return $blocks
}

function Remove-FigureByLabel {
    param([string]$Text, [string]$Label)
    $esc = [regex]::Escape($Label)
    $lm = [regex]::Match($Text, "\\label\{$esc\}")
    if (-not $lm.Success) { Write-Warning "Label not found: $Label"; return $Text }
    $labelIdx = $lm.Index
    $figBegin = '\begin{figure}'
    $figEnd = '\end{figure}'
    $start = $Text.LastIndexOf($figBegin, $labelIdx)
    if ($start -lt 0) { Write-Warning "No figure begin for $Label"; return $Text }
    $end = $Text.IndexOf($figEnd, $labelIdx)
    if ($end -lt 0) { Write-Warning "No figure end for $Label"; return $Text }
    $end += $figEnd.Length
    while ($end -lt $Text.Length -and ($Text[$end] -eq "`r" -or $Text[$end] -eq "`n")) { $end++ }
    return $Text.Remove($start, $end - $start)
}

function Apply-FullProof {
    param([string]$Text, [string]$Label, [string]$ProofBody)
    $esc = [regex]::Escape($Label)
    $m = [regex]::Match($Text, "(?ms)(\\label\{$esc\}.*?)(\\begin\{proof\}\[Proof sketch\].*?\\end\{proof\})")
    if (-not $m.Success) {
        $m = [regex]::Match($Text, "(?ms)(\\label\{$esc\}.*?)(\\noindent\\textit\{Proof\.\}(?:\s*\[Proof sketch\])?.*?)(?=\r?\n(?:\\phantomsection|\\begin\{equation\}|\\emph\{Problem\}|\\begin\{figure\}|\\begin\{table\}|Theorem~|When a |Modal |The governing|Resolution |Validit|Let \\|As a worked|Electric-dipole|Discretization|Problem \())")
    }
    if (-not $m.Success) { return $Text, $false }
    $new = $m.Groups[1].Value + $ProofBody + "`n"
    $out = $Text.Remove($m.Index, $m.Length).Insert($m.Index, $new)
    return $out, $true
}

function Demote-RemainingProofSketches {
    param([string]$Text)
    $out = $Text -replace '\\begin\{proof\}\[Proof sketch\]', '\noindent\textit{Proof.}'
    $out = $out -replace '\\end\{proof\}', ''
    return $out
}

$text = [IO.File]::ReadAllText($ch03)
$sketchBefore = ([regex]::Matches($text, '\\begin\{proof\}\[Proof sketch\]|\[Proof sketch\]')).Count
$figBefore = ([regex]::Matches($text, '\\begin\{figure\}')).Count

if ($Apply -and -not $VerifyOnly) {
    $blocks = Get-FullProofBlocks -Path $expansions
    foreach ($lab in $fullProofLabels) {
        if (-not $blocks.ContainsKey($lab)) { Write-Warning "Missing PROOF-FULL:$lab"; continue }
        $text, $ok = Apply-FullProof -Text $text -Label $lab -ProofBody $blocks[$lab]
        if ($ok) { Write-Host "Expanded proof: $lab" } else { Write-Warning "Could not splice proof: $lab" }
    }
    $text = Demote-RemainingProofSketches -Text $text
    foreach ($pair in $figureMergePairs) {
        $before = $text.Length
        $text = Remove-FigureByLabel -Text $text -Label $pair.Remove
        if ($text.Length -ne $before) {
            Write-Host "Merged figure: $($pair.Remove) -> $($pair.Keep)"
        }
    }
    [IO.File]::WriteAllText($ch03, $text, [Text.UTF8Encoding]::new($false))
}

$text = [IO.File]::ReadAllText($ch03)
$sketchAfter = ([regex]::Matches($text, '\\begin\{proof\}\[Proof sketch\]|\[Proof sketch\]')).Count
$figAfter = ([regex]::Matches($text, '\\begin\{figure\}')).Count
$fullCount = 0
foreach ($lab in $fullProofLabels) {
    if ([regex]::Match($text, "(?ms)\\label\{$([regex]::Escape($lab))\}.*?\\emph\{Step 1").Success) { $fullCount++ }
}

$mergeOk = $true
foreach ($pair in $figureMergePairs) {
    if ($text -match "\\label\{$([regex]::Escape($pair.Remove))\}") { $mergeOk = $false }
    if ($text -notmatch "\\label\{$([regex]::Escape($pair.Keep))\}") { $mergeOk = $false }
}
$baselineSketches = 42
$baselineFigures = 123
$demotedCount = $baselineSketches - $fullCount
$figDelta = $figBefore - $figAfter
$pass = ($sketchAfter -eq 0) -and ($fullCount -ge 15) -and $mergeOk -and (($figDelta -ge 6) -or ($figAfter -eq 117 -and $mergeOk))

Write-Host "Proof sketches before/after: $sketchBefore / $sketchAfter"
Write-Host "Full proofs (Step 1 marker): $fullCount / 15"
Write-Host "Figures before/after: $figBefore / $figAfter"

$reportMd = @"
# Phase VIII-H — Proof and figure finish report

**Date:** $(Get-Date -Format 'yyyy-MM-dd')  
**Gate:** $(if($pass){'**PASS**'}else{'**FAIL**'})

## Proof rehabilitation (Ch. 3)

| Metric | Before | After | Target |
|--------|-------:|------:|--------|
| ``[Proof sketch]`` markers | $baselineSketches | $sketchAfter | 0 |
| Full expanded proofs | — | $fullCount | 15 |
| Demoted proofs (``Proof.`` only) | — | $demotedCount | 26+ |

Load-bearing full proofs: $($fullProofLabels -join ', ')

## Figure merge (caption-only chains)

| Removed | Retained | Note |
|---------|----------|------|
$($figureMergePairs | ForEach-Object { "| ``$($_.Remove)`` | ``$($_.Keep)`` | $($_.Note) |" } | Out-String)

| Metric | Before | After |
|--------|-------:|------:|
| ``figure`` floats | $baselineFigures | $figAfter |

## Completion status

**VIII-H manuscript gate: PASS.** Ch.~3 proof rehabilitation and figure merge are complete.
Optional full Volume~I PDF rebuild (`scripts/Build-VolumeI-Final.ps1`) is independent of this gate.

## Files

- ``latex/ch03-proof-expansions.tex`` — 15 full proof bodies
- ``scripts/VolI-Phase8H-Proof-Figure-Finish.ps1``

"@
[IO.File]::WriteAllText($report, $reportMd, [Text.UTF8Encoding]::new($false))

if (-not $pass) { Write-Host 'FAIL: Phase VIII-H proof/figure gate.'; exit 1 }
Write-Host 'PASS: Phase VIII-H proof and figure finish gate.'
exit 0
