# Phase VIII-A — extended zero-tolerance lexicon (prose rehabilitation)
param(
    [string]$Root = (Join-Path $PSScriptRoot '..'),
    [switch]$Apply,
    [switch]$VerifyOnly
)
Set-StrictMode -Version Latest
$ErrorActionPreference = 'Stop'

$root = Resolve-Path $Root
$latex = Join-Path $root 'latex'

$targets = @(
    'frontmatter-preface.tex',
    'frontmatter-notation-conventions.tex',
    'frontmatter-glossary.tex',
    'frontmatter-bibliography-architecture.tex',
    'vol-i-synthesis.tex',
    'ch01.tex', 'ch02.tex', 'ch03.tex', 'ch04.tex'
) | ForEach-Object { Join-Path $latex $_ } | Where-Object { Test-Path $_ }

function Invoke-ProseReplace {
    param([string]$Text, [string]$Old, [string]$New)
    if ([string]::IsNullOrEmpty($Old)) { return $Text }
    $parts = [regex]::Split($Text, '(\\(?:label|ref|eqref|cite)\{[^}]*\})')
    for ($i = 0; $i -lt $parts.Count; $i++) {
        if ($parts[$i] -match '^\\(?:label|ref|eqref|cite)\{') { continue }
        $parts[$i] = $parts[$i].Replace($Old, $New)
    }
    return ($parts -join '')
}

function Get-ProseOnly {
    param([string]$Line)
    $p = $Line
    $p = [regex]::Replace($p, '\\(?:label|ref|eqref|cite)\{[^}]*\}', '')
    $p = [regex]::Replace($p, '\\(?:VolIFigInclude|include)\{[^}]*\}', '')
    return $p
}

# Order matters: longer phrases first (array avoids case-insensitive hash key collisions)
$replacements = @(
    @{ Old = '\subsection{Forward pointer}'; New = '\subsection{Continuity}' }
    @{ Old = 'Forward pointer. '; New = '' }
    @{ Old = 'Forward pointer.'; New = '' }
    @{ Old = 'evaluable forward pointer'; New = 'evaluable export map' }
    @{ Old = 'constructive forward pointer'; New = 'constructive export map' }
    @{ Old = 'The radiative forward pointer'; New = 'The radiative export map' }
    @{ Old = 'radiative forward pointer'; New = 'radiative export map' }
    @{ Old = 'forward pointer'; New = 'passage below' }
    @{ Old = 'Operator Chains'; New = 'Radiation Maps' }
    @{ Old = 'operator chains'; New = 'excitation-to-flux sequences' }
    @{ Old = 'Operator chain'; New = 'Excitation-to-flux sequence' }
    @{ Old = 'operator chain'; New = 'excitation-to-flux sequence' }
    @{ Old = 'Finite-rank measurement map'; New = 'Finite-rank instrument readout' }
    @{ Old = 'self-adjoint measurement map'; New = 'self-adjoint instrument readout' }
    @{ Old = 'measurement maps'; New = 'rank-$N$ instrument readouts' }
    @{ Old = 'Measurement map'; New = 'Rank-$N$ instrument readout' }
    @{ Old = 'measurement map'; New = 'rank-$N$ instrument readout' }
    @{ Old = 'calibration certificates'; New = 'range calibration reports' }
    @{ Old = 'Calibration certificate'; New = 'Range calibration report' }
    @{ Old = 'calibration certificate'; New = 'range calibration report' }
    @{ Old = 'gain certificate'; New = 'gain calibration report' }
    @{ Old = 'joint certificate'; New = 'joint range report' }
    @{ Old = 'Truncation certificate.'; New = 'Truncation bound.' }
    @{ Old = 'truncation certificate'; New = 'truncation bound' }
    @{ Old = 'three-way certificate'; New = 'three-way closure' }
    @{ Old = 'finite-support realizability certificate'; New = 'finite-support realizability bound' }
    @{ Old = 'Laboratory certification requires'; New = 'Laboratory range closure requires' }
    @{ Old = 'Laboratory certification'; New = 'Laboratory range report' }
    @{ Old = 'laboratory certification'; New = 'laboratory range report' }
    @{ Old = 'flux-certified'; New = 'flux-normalized' }
    @{ Old = 'flux certified'; New = 'flux normalized' }
    @{ Old = 'Certify whether'; New = 'Determine whether' }
    @{ Old = 'certify whether'; New = 'determine whether' }
    @{ Old = 'certifies deterministic'; New = 'establishes deterministic' }
    @{ Old = 'Volume I certifies'; New = 'Volume I establishes' }
    @{ Old = 'certifies'; New = 'establishes' }
    @{ Old = 'Certifies'; New = 'Establishes' }
    @{ Old = 'certify'; New = 'establish' }
    @{ Old = 'Certify'; New = 'Establish' }
    @{ Old = 'certified measurements'; New = 'reported measurements' }
    @{ Old = 'certified measurement'; New = 'reported measurement' }
    @{ Old = 'are not certified'; New = 'are not reported' }
    @{ Old = 'is not certified'; New = 'is not reported' }
    @{ Old = 'not certified'; New = 'not reported' }
    @{ Old = 'Certified estimate'; New = 'Reported estimate' }
    @{ Old = 'Certified \(\widehat{c}\)'; New = 'Reported \(\widehat{c}\)' }
    @{ Old = 'Certified $\widehat{c}$'; New = 'Reported $\widehat{c}$' }
    @{ Old = 'certified \(\widehat{c}\)'; New = 'reported \(\widehat{c}\)' }
    @{ Old = 'certified $\widehat{c}$'; New = 'reported $\widehat{c}$' }
    @{ Old = 'certified \(\mathbf{c}\)'; New = 'reported \(\mathbf{c}\)' }
    @{ Old = 'certified $\mathbf{c}$'; New = 'reported $\mathbf{c}$' }
    @{ Old = 'certified \widehat{c}'; New = 'reported $\widehat{c}$' }
    @{ Old = 'certified \mathbf{c}'; New = 'reported $\mathbf{c}$' }
    @{ Old = 'Certified patterns'; New = 'Reported patterns' }
    @{ Old = 'certified patterns'; New = 'reported patterns' }
    @{ Old = 'Certified c'; New = 'Reported c' }
    @{ Old = 'certified c'; New = 'reported c' }
    @{ Old = 'certification tolerance'; New = 'measurement tolerance' }
    @{ Old = 'certification reports'; New = 'range reports' }
    @{ Old = 'certification fails'; New = 'range report fails' }
    @{ Old = 'certification fail'; New = 'range report fail' }
    @{ Old = 'certification passes'; New = 'synthesis passes' }
    @{ Old = 'Certification versus synthesis'; New = 'Range report versus synthesis' }
    @{ Old = 'certification versus synthesis'; New = 'range report versus synthesis' }
    @{ Old = 'Certification'; New = 'Range validation' }
    @{ Old = 'certification'; New = 'range validation' }
    @{ Old = 'Certified'; New = 'Reported' }
    @{ Old = 'certified'; New = 'reported' }
    @{ Old = 'measurement chain'; New = 'measurement sequence' }
    @{ Old = 'Subspace chain'; New = 'Subspace nesting' }
    @{ Old = 'subspace chain'; New = 'subspace nesting' }
    @{ Old = 'fixed chain of'; New = 'fixed sequence of' }
    @{ Old = 'through that chain'; New = 'through that sequence' }
    @{ Old = 'bound chain for'; New = 'bound sequence for' }
    @{ Old = 'verifiable chain'; New = 'verifiable sequence' }
    @{ Old = 'Three-level hierarchy'; New = 'Three-level nesting' }
    @{ Old = 'three-level hierarchy'; New = 'three-level nesting' }
    @{ Old = 'Spatial hierarchy'; New = 'Spatial nesting' }
    @{ Old = 'spatial hierarchy'; New = 'spatial nesting' }
    @{ Old = 'polynomial-in-\(k_0 r\) hierarchy'; New = 'polynomial-in-\(k_0 r\) ordering' }
    @{ Old = 'Compression hierarchy'; New = 'Spectral truncation order' }
    @{ Old = 'compression hierarchy'; New = 'spectral truncation order' }
    @{ Old = 'Pairing hierarchy'; New = 'Pairing comparison' }
    @{ Old = 'pairing hierarchy'; New = 'pairing comparison' }
    @{ Old = 'measurement hierarchy'; New = 'measurement ordering' }
    @{ Old = 'laboratory hierarchy'; New = 'laboratory ordering' }
    @{ Old = 'mathematical hierarchy'; New = 'mathematical ordering' }
    @{ Old = 'parallel hierarchy'; New = 'parallel ordering' }
    @{ Old = 'governed hierarchy'; New = 'physical ordering' }
    @{ Old = 'progressive hierarchy'; New = 'nested ordering' }
    @{ Old = 'norm hierarchy'; New = 'norm ordering' }
    @{ Old = 'a hierarchy of'; New = 'a nesting of' }
    @{ Old = 'hierarchy of'; New = 'nesting of' }
    @{ Old = 'that hierarchy'; New = 'that nesting' }
    @{ Old = 'this hierarchy'; New = 'this nesting' }
    @{ Old = 'The hierarchy'; New = 'The nesting' }
    @{ Old = 'the hierarchy'; New = 'the nesting' }
    @{ Old = 'hierarchy is'; New = 'nesting is' }
    @{ Old = 'hierarchy---'; New = 'nesting---' }
    @{ Old = 'hierarchy,'; New = 'nesting,' }
    @{ Old = 'hierarchy.'; New = 'nesting.' }
    @{ Old = 'hierarchy '; New = 'nesting ' }
    @{ Old = 'Progressive spaces (reference chain)'; New = 'Nested admissible classes' }
    @{ Old = 'progressive field classes'; New = 'nested admissible classes' }
    @{ Old = 'resolve and certify what was exported'; New = 'recover within declared tolerance what was exported' }
    @{ Old = 'produced, transported, and certified'; New = 'produced, transported, and reported on $\Gamma_R$' }
    @{ Old = 'export machinery'; New = 'export maps' }
    @{ Old = 'Bibliography Architecture'; New = 'Bibliographical Foundations' }
    @{ Old = 'bibliography architecture'; New = 'bibliographical foundations' }
    @{ Old = 'mathematical architecture'; New = 'mathematical structure' }
    @{ Old = 'spectral architecture'; New = 'spectral methods' }
    @{ Old = 'long simulation input list'; New = 'long harmonic fit input list' }
    @{ Old = 'modal index in software'; New = 'modal index in post-processing' }
    @{ Old = 'Cross-chapter reference markers'; New = 'Inheritance indices (closing sections)' }
    @{ Old = 'source-to-radiation-to-measurement chain'; New = 'source-to-radiation-to-measurement sequence' }
    @{ Old = 'source-to-field-to-radiation chain'; New = 'source-to-field-to-radiation sequence' }
)

$tierA = @(
    '\bgovernance\b', '\bcompliance\b', '\bconstitutional\b', '\bconstitution\b',
    '\baudit\b', '\bauditable\b', '\bpipeline\b', '\bworkflow\b', '\bframework\b',
    '\bmetadata\b', '\bontology\b', '\btaxonomy\b', '\bparadigm\b', '\bformalism\b',
    '\bstakeholder\b', '\bdeliverable\b', '\broadmap\b', '\bscaffold\b',
    '\bsoftware\b', '\bsimulation\b', '\boptimizer\b', '\balgorithmic\b',
    '\bthe reader\b', '\bThis subsection\b', '\bdelve\b', '\bleverage\b', '\butilize\b',
    '\bactionable\b', '\bholistic\b', '\bsynergy\b', '\bunpack\b', '\bformalize\b',
    '\bforward pointer\b', '\boperator chain\b', '\bmeasurement map\b'
)

$tierAProseCertif = '\b(certif\w*)\b'

$total = 0
if ($Apply -and -not $VerifyOnly) {
    foreach ($path in $targets) {
        $c = [IO.File]::ReadAllText($path)
        $raw = $c
        foreach ($pair in $replacements) {
            $c = Invoke-ProseReplace -Text $c -Old $pair.Old -New $pair.New
        }
        $c = [regex]::Replace($c, '\.  +', '. ')
        $c = [regex]::Replace($c, '\n\n\n+', "`n`n")
        if ($c -ne $raw) {
            [IO.File]::WriteAllText($path, $c, [Text.UTF8Encoding]::new($false))
            Write-Host "Updated: $(Split-Path $path -Leaf)"
            $total++
        }
    }
    Write-Host "Phase VIII-A apply: $total files changed."
}

$fail = @()
foreach ($path in $targets) {
    $lines = [IO.File]::ReadAllLines($path)
    $name = Split-Path $path -Leaf
    for ($i = 0; $i -lt $lines.Count; $i++) {
        $line = $lines[$i]
        if ($line -match '^\s*%') { continue }
        $prose = Get-ProseOnly -Line $line
        foreach ($p in $tierA) {
            if ($prose -match $p) { $fail += "$name`:$($i+1): $p" }
        }
        if ($prose -match $tierAProseCertif) { $fail += "$name`:$($i+1): certif*" }
    }
}

if ($fail.Count -gt 0) {
    Write-Host "FAIL: $($fail.Count) Tier-A hits remain:"
    $fail | Select-Object -First 50 | ForEach-Object { Write-Host "  $_" }
    exit 1
}
Write-Host 'PASS: Phase VIII-A zero-tolerance voice gate (Tier A).'
exit 0
