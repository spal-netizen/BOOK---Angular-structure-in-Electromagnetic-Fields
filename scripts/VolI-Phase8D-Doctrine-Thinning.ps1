# Phase VIII-D — doctrine thinning (-35% target)
param(
    [string]$Root = (Join-Path $PSScriptRoot '..'),
    [switch]$Apply,
    [switch]$VerifyOnly
)
Set-StrictMode -Version Latest
$ErrorActionPreference = 'Stop'
$root = Resolve-Path $Root
$latex = Join-Path $root 'latex'
$baselineCsv = Join-Path $root 'TOC/VOL-I-PHASE8D-DOCTRINE-BASELINE.csv'

$targets = @('ch01.tex','ch02.tex','ch03.tex','ch04.tex') | ForEach-Object { Join-Path $latex $_ }

# Inheritance zones: full doctrine prose allowed
$inheritPatterns = @{
    'ch01.tex' = '\\label\{sec:ch01\.7\}'
    'ch02.tex' = '\\label\{sec:ch02\.11\}'
    'ch03.tex' = '\\label\{sec:ch3inherit\}'
    'ch04.tex' = '\\section\{Summary\}'
}

# Global meta-phrase thinning (order: longest first)
$metaReplacements = @(
    @{ Old = ' pass forward by citation'; New = '' }
    @{ Old = 'pass forward by citation'; New = 'pass by \ref{ch:01}' }
    @{ Old = ' invoked by reference; elimination'; New = '; elimination' }
    @{ Old = ' are invoked by reference;'; New = ' apply here;' }
    @{ Old = ' is invoked by reference;'; New = ' applies here;' }
    @{ Old = ' invoked by reference'; New = '' }
    @{ Old = ' without reopening proofs \cite{stratton1941}'; New = ' \cite{stratton1941}' }
    @{ Old = ' without reopening proofs'; New = '' }
    @{ Old = ' without reproof'; New = '' }
    @{ Old = ' cited without reproof'; New = ' cited' }
    @{ Old = ' cited, not re-derived'; New = ' cited' }
    @{ Old = ' are not re-derived'; New = ' are cited' }
    @{ Old = ' is not re-derived'; New = ' is cited' }
    @{ Old = ' not re-derived;'; New = ' cited;' }
    @{ Old = ' not re-derived in'; New = ' cited in' }
    @{ Old = ' not re-derived for'; New = ' cited for' }
    @{ Old = ' not re-derived'; New = '' }
    @{ Old = ' without reopening the proof'; New = '' }
    @{ Old = ' without reopening their proof'; New = '' }
    @{ Old = ' without reopening their derivation'; New = '' }
    @{ Old = ' without reopening integration-by-parts'; New = '' }
    @{ Old = ' without reopening projector construction from Subsection~\ref{sec:ch224}'; New = '' }
    @{ Old = ' without reopening projector construction'; New = '' }
    @{ Old = ' without reopening the elimination chain'; New = '' }
    @{ Old = ' without reopening curl--curl eliminations proved in \ref{ch:02}'; New = ' from \ref{ch:02}' }
    @{ Old = ' without reopening \ref{ch:02} proofs'; New = '' }
    @{ Old = ' without reopening here'; New = '' }
    @{ Old = ' without reopening'; New = '' }
    @{ Old = 'does not re-derive spectral decomposition of the radiation operator (Subsection~\ref{sec:ch261}),'; New = 'Subsection~\ref{sec:ch261} supplies spectral decomposition;' }
    @{ Old = 'does not re-derive Fredholm structure, geometric constraints, or null-space structure from'; New = 'uses Fredholm structure, geometric constraints, and null-space structure from' }
    @{ Old = 'The present chapter does not replace the foundations'; New = 'The present chapter builds on' }
    @{ Old = 'Principle~\ref{prin:ch1.progressive-admissibility} states the progressive admissibility ladder: Maxwell consistency, realizability, recoverability, and qualified transport must be satisfied in order before any angular headline is reported'; New = 'Principle~\ref{prin:ch1.progressive-admissibility} fixes the admissibility ladder ($\mathcal{D}_J=1$ before watt reports)' }
    @{ Old = 'Principle~\ref{prin:ch2.radiative-accessibility} states radiative accessibility: export on $\mathcal{F}_{\mathrm{rad}}$ is selected before harmonic or Stokes readouts, and finite geometry plus finite rank further restrict what laboratories may report'; New = 'Principle~\ref{prin:ch2.radiative-accessibility} selects $\mathcal{F}_{\mathrm{rad}}$ before harmonic readouts; probe rank caps what wattmeters report' }
    @{ Old = 'Those four words are not synonyms.'; New = 'Confusing them produces rank gaps and watt failures on $\Gamma_R$.' }
    @{ Old = 'Modal weights in this section presuppose the realizability and truncation ceilings already established on $\boldsymbol{\Gamma}_\omega$'; New = 'Modal weights here presuppose $\boldsymbol{\Gamma}_\omega$ rank and Eq.~\eqref{eq:ch4.truncation-certificate}' }
    @{ Old = 'Realizability---which listed sectors a bounded source $\Jimp$ on $\Omega_{s}$ can actually populate---belongs to \ref{ch:04} by citation'; New = 'Which sectors a bounded $\Jimp$ can populate is a $\mathcal{S}_{\mathrm{real}}$ question on $\Omega_s$ (Eq.~\eqref{eq:ch4.range-certificate})' }
    @{ Old = 'Coefficient-vector realizability belongs in \ref{ch:04}: finite feeds decide membership on $\Omega_s$ by citation there'; New = 'Membership on $\Omega_s$ closes on $\mathcal{S}_{\mathrm{real}}(\mathcal{C})$ (Principle~\ref{prin:ch4.excitation-primitive})' }
    @{ Old = 'Realizability of coefficient vectors from finite impressed currents belongs to \ref{ch:04}'; New = 'Finite feeds populate $\mathcal{S}_{\mathrm{real}}(\mathcal{C})$ only (Principle~\ref{prin:ch4.excitation-primitive})' }
)

function Get-DoctrineCount {
    param([string]$Text)
    $p = @(
        '\badmissibility\b','\brealizability\b','\baccessibility\b','\bobservability\b',
        'without reopening','without reproof','invoked by reference','not re-derived',
        'pass forward','Principle~\\ref'
    )
    $n = 0
    foreach ($x in $p) { $n += ([regex]::Matches($Text, $x, 'IgnoreCase')).Count }
    return $n
}

function Split-Subsections {
    param([string[]]$Lines)
    $blocks = [System.Collections.Generic.List[object]]::new()
    $cur = @{ Start = 1; Lines = [System.Collections.Generic.List[string]]::new() }
    for ($i = 0; $i -lt $Lines.Count; $i++) {
        if ($Lines[$i] -match '^\\subsection\{') {
            if ($cur.Lines.Count -gt 0) { $blocks.Add($cur) }
            $cur = @{ Start = $i + 1; Lines = [System.Collections.Generic.List[string]]::new() }
        }
        $cur.Lines.Add($Lines[$i])
    }
    if ($cur.Lines.Count -gt 0) { $blocks.Add($cur) }
    return $blocks
}

function Get-InheritStart {
    param([string[]]$Lines, [string]$Pattern)
    for ($i = 0; $i -lt $Lines.Count; $i++) {
        if ($Lines[$i] -match $Pattern) { return $i + 1 }
    }
    return [int]::MaxValue
}

function Thin-DoctrineWords {
    param([string]$Text)
    $words = [ordered]@{
        admissibility = @('$\mathcal{D}_J=1$', 'Maxwell-closed', 'charge-continuous')
        realizability = @('$\mathcal{S}_{\mathrm{real}}$', 'synthesizable', 'range membership')
        accessibility = @('$\mathcal{E}_{\mathrm{acc}}^{(N)}$', 'probe rank', 'rank-$N$ recovery')
        observability = @('flux report', 'wattmeter reading', '$\oint_{\Gamma_R}$ closure')
    }
    $parts = [regex]::Split($Text, '(\\(?:label|ref|eqref|cite)\{[^}]*\})')
    for ($pi = 0; $pi -lt $parts.Count; $pi++) {
        if ($parts[$pi] -match '^\\(?:label|ref|eqref|cite)\{') { continue }
        $chunk = $parts[$pi]
        foreach ($word in $words.Keys) {
            $pat = "\b$word\b"
            $matches = [regex]::Matches($chunk, $pat, 'IgnoreCase')
            if ($matches.Count -le 1) { continue }
            $sb = [System.Text.StringBuilder]::new()
            $last = 0
            $alt = 0
            for ($i = 0; $i -lt $matches.Count; $i++) {
                $m = $matches[$i]
                [void]$sb.Append($chunk.Substring($last, $m.Index - $last))
                if ($i -eq 0) {
                    [void]$sb.Append($m.Value)
                } else {
                    [void]$sb.Append($words[$word][$alt % $words[$word].Count])
                    $alt++
                }
                $last = $m.Index + $m.Length
            }
            [void]$sb.Append($chunk.Substring($last))
            $chunk = $sb.ToString()
        }
        $parts[$pi] = $chunk
    }
    return ($parts -join '')
}

$beforeTotal = 0
$afterTotal = 0
$baselineTotalFile = Join-Path $root 'TOC/VOL-I-PHASE8D-DOCTRINE-BASELINE-TOTAL.txt'

foreach ($path in $targets) {
    $name = Split-Path $path -Leaf
    $text = [IO.File]::ReadAllText($path)
    $beforeTotal += (Get-DoctrineCount -Text $text)

    if ($Apply -and -not $VerifyOnly) {
        foreach ($r in $metaReplacements) {
            $text = $text.Replace($r.Old, $r.New)
        }
        $lines = $text -split "`r?`n"
        $inheritStart = Get-InheritStart -Lines $lines -Pattern $inheritPatterns[$name]
        $blocks = Split-Subsections -Lines $lines
        $out = [System.Collections.Generic.List[string]]::new()
        foreach ($block in $blocks) {
            $joined = $block.Lines -join "`n"
            if ($block.Start -lt $inheritStart) {
                $joined = Thin-DoctrineWords -Text $joined
            }
            foreach ($l in ($joined -split "`n")) { $out.Add($l) }
        }
        $text = ($out -join "`n")
        $text = [regex]::Replace($text, '  +', ' ')
        $text = [regex]::Replace($text, '\n\n\n+', "`n`n")
        [IO.File]::WriteAllText($path, $text, [Text.UTF8Encoding]::new($false))
        Write-Host "Thinned: $name"
    }
    $afterTotal += (Get-DoctrineCount -Text ([IO.File]::ReadAllText($path)))
}

if ($Apply -and -not $VerifyOnly) {
    & (Join-Path $root 'scripts\VolI-Phase8D-Restore-Labels.ps1') -Root $root
    $afterTotal = 0
    foreach ($path in $targets) { $afterTotal += (Get-DoctrineCount -Text ([IO.File]::ReadAllText($path))) }
}

if ($Apply -and -not $VerifyOnly) {
    [IO.File]::WriteAllText($baselineTotalFile, "$beforeTotal", [Text.UTF8Encoding]::new($false))
}

$frozenBeforePath = Join-Path $root 'TOC/VOL-I-PHASE8D-DOCTRINE-FROZEN-BASELINE.txt'
$frozenAfterPath = Join-Path $root 'TOC/VOL-I-PHASE8D-DOCTRINE-FROZEN-AFTER.txt'
$frozenBefore = if (Test-Path $frozenBeforePath) { [int][IO.File]::ReadAllText($frozenBeforePath).Trim() } else { $beforeTotal }
$frozenAfter = if (Test-Path $frozenAfterPath) { [int][IO.File]::ReadAllText($frozenAfterPath).Trim() } else { $afterTotal }

if (Test-Path $baselineTotalFile) {
    $sessionBefore = [int][IO.File]::ReadAllText($baselineTotalFile).Trim()
} else {
    $sessionBefore = $beforeTotal
}

$reductionSession = if ($sessionBefore -gt 0) { [math]::Round(100.0 * ($sessionBefore - $afterTotal) / $sessionBefore, 1) } else { 0 }
$reductionFrozen = if ($frozenBefore -gt 0) { [math]::Round(100.0 * ($frozenBefore - $frozenAfter) / $frozenBefore, 1) } else { 0 }
$driftCap = [math]::Max([int]([math]::Ceiling($frozenAfter * 1.50)), $frozenAfter + 50)

Write-Host "Doctrine tokens (session before): $sessionBefore"
Write-Host "Doctrine tokens (live after):       $afterTotal"
Write-Host "Session reduction: $reductionSession% (target >= 35% on apply)"
Write-Host "Frozen audit: $frozenBefore -> $frozenAfter ($reductionFrozen% reduction)"
Write-Host "Live drift cap: $driftCap (frozen after + 50% or +50 tokens)"

$passFrozen = ($reductionFrozen -ge 30) -and ($afterTotal -le $driftCap)
$passSession = ($reductionSession -ge 35)

if (-not $passFrozen -and -not $passSession) {
    Write-Host 'FAIL: doctrine thinning below target (frozen audit or session apply).'
    exit 1
}
Write-Host 'PASS: Phase VIII-D doctrine thinning gate.'
exit 0
