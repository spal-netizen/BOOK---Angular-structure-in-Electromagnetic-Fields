# Phase VIII-D — doctrine token baseline count
param([string]$Root = (Join-Path $PSScriptRoot '..'))
Set-StrictMode -Version Latest
$ErrorActionPreference = 'Stop'
$latex = Join-Path (Resolve-Path $Root) 'latex'

$tokens = [ordered]@{
    admissibility = '\badmissibility\b'
    realizability = '\brealizability\b'
    accessibility = '\baccessibility\b'
    observability = '\bobservability\b'
    without_reopening = 'without reopening'
    without_reproof = 'without reproof'
    invoked_by_ref = 'invoked by reference'
    not_rederived = 'not re-derived|cited, not re-derived|are not re-derived'
    pass_forward = 'pass forward'
    principle_ref = 'Principle~\\ref'
    meta_established = 'already established|prior results|does not replace the foundations'
}

$grand = 0
$report = @()
foreach ($f in @('ch01.tex','ch02.tex','ch03.tex','ch04.tex')) {
    $path = Join-Path $latex $f
    $c = [IO.File]::ReadAllText($path)
    $sub = 0
    foreach ($k in $tokens.Keys) {
        $n = ([regex]::Matches($c, $tokens[$k], 'IgnoreCase')).Count
        $sub += $n
        if ($n -gt 0) { $report += [pscustomobject]@{ File = $f; Token = $k; Count = $n } }
    }
    Write-Host "$f : $sub"
    $grand += $sub
}
Write-Host "GRAND TOTAL: $grand"
$out = Join-Path (Resolve-Path $Root) 'TOC/VOL-I-PHASE8D-DOCTRINE-BASELINE.csv'
$report | Export-Csv -Path $out -NoTypeInformation
Write-Host "Wrote: $out"
