# Phase VIII-C — Architecture invisibility (strict, per subsection)
param(
    [string]$Root = (Join-Path $PSScriptRoot '..'),
    [ValidateSet(0, 1, 2, 3, 4)]
    [int]$Chapter = 0,
    [switch]$Apply,
    [switch]$VerifyOnly
)
Set-StrictMode -Version Latest
$ErrorActionPreference = 'Stop'
$root = Resolve-Path $Root
$latex = Join-Path $root 'latex'
$toc = Join-Path $root 'TOC'

$chapterFiles = @(
    @{ Num = 1; File = 'ch01.tex'; InheritFrom = '\\label\{sec:ch01\.7\}' }
    @{ Num = 2; File = 'ch02.tex'; InheritFrom = '\\label\{sec:ch02\.11\}' }
    @{ Num = 3; File = 'ch03.tex'; InheritFrom = '\\label\{sec:ch3inherit\}' }
    @{ Num = 4; File = 'ch04.tex'; InheritFrom = '\\section\{Summary\}' }
)

$titleFixes = @(
    @{ Old = '\section{Finite Support and Radiation Radiation Maps}'; New = '\section{Finite Support and Radiation Maps}' }
    @{ Old = '\section{Finite Support and Radiation Operator Chains}'; New = '\section{Finite Support and Radiation Maps}' }
    @{ Old = '\subsection{Continuity with Chapter 1}'; New = '\subsection{Admissibility and operator packaging}' }
    @{ Old = '\subsection{Continuity with Chapters 1 and 2}'; New = '\subsection{Export operators and range reports}' }
    @{ Old = '\subsection{Continuity with Chapters 1-3}'; New = '\subsection{Realizability composition}' }
    @{ Old = '\paragraph{Continuity to Chapter~\ref{ch:04}.}'; New = '\paragraph{Realizability and source inverse maps.}' }
)

$pointerFixes = @(
    @{ Old = 'Spectral Truncation}) completes the passage below by stating which operator outputs'; New = 'Spectral Truncation}) states which operator outputs' }
    @{ Old = 'Spectral Truncation}) states below which operator outputs which operator outputs'; New = 'Spectral Truncation}) states which operator outputs' }
    @{ Old = 'Section~\ref{sec:ch24}. The passage below'; New = 'Section~\ref{sec:ch24}. The export map below' }
    @{ Old = 'passage below is well defined, but the inverse'; New = 'export map is well defined, but the inverse' }
    @{ Old = 'compose with the passage below $\mathcal{R}_\omega$'; New = 'compose with $\mathcal{R}_\omega$' }
    @{ Old = 'even when passage belows'; New = 'even when export maps differ' }
    @{ Old = 'states the vector reduction as a passage below rather than'; New = 'states the vector reduction below rather than' }
    @{ Old = 'as a passage below rather than'; New = 'below rather than' }
    @{ Old = 'Forward pointer.'; New = '' }
    @{ Old = 'Forward pointer '; New = '' }
    @{ Old = 'forward pointer'; New = '' }
    @{ Old = 'operator chains'; New = 'radiation maps' }
    @{ Old = 'operator chain'; New = 'radiation map' }
    @{ Old = 'Operator Chains'; New = 'Radiation Maps' }
    @{ Old = 'Operator Chain'; New = 'Radiation Map' }
)

function Convert-ChapterMention {
    param([string]$Match)
    if ($Match -match 'Chapter~\\ref\{([^}]+)\}') { return "\ref{$($Matches[1])}" }
    if ($Match -match 'Chapter~([0-9]+)\s*\(') { return "\ref{ch:0$($Matches[1])}" }
    if ($Match -match 'Chapter~([0-9]+)--([0-9]+)') { return "\ref{ch:0$($Matches[1])}--\ref{ch:0$($Matches[2])}" }
    if ($Match -match 'Chapter~([0-9]+)') { return "\ref{ch:0$($Matches[1])}" }
    if ($Match -match 'Chapters~\\ref\{([^}]+)\}--\\ref\{([^}]+)\}') { return "\ref{$($Matches[1])}--\ref{$($Matches[2])}" }
    if ($Match -match 'Chapters~([0-9]+) and ([0-9]+)') { return "\ref{ch:0$($Matches[1])} and \ref{ch:0$($Matches[2])}" }
    return '\ref{ch:??}'
}

function Repair-ThinArtifacts {
    param([string]$Text)
    $Text = $Text -replace '\\ref\{ch:([0-9]+)\}\}\)', '\ref{ch:$1}'
    $Text = $Text -replace '\\ref\{ch:([0-9]+)\}\}\);', '\ref{ch:$1};'
    return $Text
}

function Thin-ChapterMentions {
    param([string]$Text)
    $pattern = 'Chapters~\\ref\{[^}]+\}(?:--\\ref\{[^}]+\})?|Chapters~[0-9]+(?:--[0-9]+)?(?:\s+and\s+[0-9]+)?|Chapter~\\ref\{[^}]+\}|Chapter~[0-9]+(?:--[0-9]+)?(?:\s*\([^)]+\))?|Chapter~[0-9]+'
    $first = $true
    $sb = [System.Text.StringBuilder]::new()
    $last = 0
    foreach ($m in [regex]::Matches($Text, $pattern)) {
        [void]$sb.Append($Text.Substring($last, $m.Index - $last))
        if ($first) {
            [void]$sb.Append($m.Value)
            $first = $false
        } else {
            [void]$sb.Append((Convert-ChapterMention -Match $m.Value))
        }
        $last = $m.Index + $m.Length
    }
    [void]$sb.Append($Text.Substring($last))
    return $sb.ToString()
}

function Get-InheritanceStart {
    param([string[]]$Lines, [string]$Pattern)
    for ($i = 0; $i -lt $Lines.Count; $i++) {
        if ($Lines[$i] -match $Pattern) { return $i + 1 }
    }
    return [int]::MaxValue
}

function Split-Subsections {
    param([string[]]$Lines)
    $blocks = [System.Collections.Generic.List[object]]::new()
    $cur = @{ Title = '(preamble)'; Lines = [System.Collections.Generic.List[string]]::new(); Start = 1 }
    for ($i = 0; $i -lt $Lines.Count; $i++) {
        $line = $Lines[$i]
        if ($line -match '^\\subsection\{') {
            if ($cur.Lines.Count -gt 0) { $blocks.Add($cur) }
            $cur = @{ Title = $line; Lines = [System.Collections.Generic.List[string]]::new(); Start = $i + 1 }
        }
        $cur.Lines.Add($line)
    }
    if ($cur.Lines.Count -gt 0) { $blocks.Add($cur) }
    return $blocks
}

function Split-BlockAtInherit {
    param($Block, [int]$InheritStart)
    $start = [int]$Block.Start
    $end = $start + $Block.Lines.Count - 1
    if ($end -lt $InheritStart -or $start -ge $InheritStart) { return @($Block) }
    $idx = $InheritStart - $start
    $pre = @{
        Title = $Block.Title
        Lines = [System.Collections.Generic.List[string]]::new()
        Start = $start
        Inherit = $false
    }
    $post = @{
        Title = '(inherit-tail)'
        Lines = [System.Collections.Generic.List[string]]::new()
        Start = $InheritStart
        Inherit = $true
    }
    for ($j = 0; $j -lt $Block.Lines.Count; $j++) {
        if ($j -lt $idx) { $pre.Lines.Add($Block.Lines[$j]) }
        else { $post.Lines.Add($Block.Lines[$j]) }
    }
    return @($pre, $post)
}

function Expand-Blocks {
    param($Blocks, [int]$InheritStart)
    $expanded = [System.Collections.Generic.List[object]]::new()
    foreach ($b in $Blocks) {
        foreach ($piece in (Split-BlockAtInherit -Block $b -InheritStart $InheritStart)) {
            if (-not $piece.ContainsKey('Inherit')) {
                $piece.Inherit = ($piece.Start -ge $InheritStart)
            }
            $expanded.Add($piece)
        }
    }
    return $expanded
}

function Count-ChapterMentions { param([string]$Text) return ([regex]::Matches($Text, 'Chapter~|Chapters~')).Count }

$ban = @(
    'Operator Chain', 'operator chain', 'forward pointer', 'Forward pointer', 'passage below',
    'Radiation Radiation Maps', 'Continuity with Chapter', 'Continuity with Chapters', 'Continuity to Chapter'
)

$targets = if ($Chapter -gt 0) { $chapterFiles | Where-Object { $_.Num -eq $Chapter } } else { $chapterFiles }
$allViolations = @()
$chapterReports = @()

foreach ($ch in $targets) {
    $path = Join-Path $latex $ch.File
    if (-not (Test-Path $path)) { continue }
    $text = [IO.File]::ReadAllText($path)
    $stats = @{
        Chapter = $ch.Num
        File = $ch.File
        TitleFixes = 0
        PointerFixes = 0
        SubsectionsThinned = 0
        InheritStart = 0
        Violations = @()
    }

    if ($Apply -and -not $VerifyOnly) {
        foreach ($f in $titleFixes) {
            $n = ([regex]::Matches($text, [regex]::Escape($f.Old))).Count
            if ($n -gt 0) {
                $text = $text.Replace($f.Old, $f.New)
                $stats.TitleFixes += $n
            }
        }
        foreach ($f in $pointerFixes) {
            $n = ([regex]::Matches($text, [regex]::Escape($f.Old))).Count
            if ($n -gt 0) {
                $text = $text.Replace($f.Old, $f.New)
                $stats.PointerFixes += $n
            }
        }
    }

    $lines = $text -split "`r?`n"
    $inheritStart = Get-InheritanceStart -Lines $lines -Pattern $ch.InheritFrom
    $stats.InheritStart = $inheritStart
    $blocks = Expand-Blocks -Blocks (Split-Subsections -Lines $lines) -InheritStart $inheritStart
    $out = [System.Collections.Generic.List[string]]::new()

    foreach ($block in $blocks) {
        $joined = ($block.Lines -join "`n")
        if ($Apply -and -not $VerifyOnly -and -not $block.Inherit) {
            $before = Count-ChapterMentions -Text $joined
            $thinned = Thin-ChapterMentions -Text $joined
            $after = Count-ChapterMentions -Text $thinned
            if ($before -gt $after) { $stats.SubsectionsThinned++ }
            $joined = $thinned
        }
        foreach ($nl in ($joined -split "`n")) { $out.Add($nl) }
    }

    if ($Apply -and -not $VerifyOnly) {
        $final = Repair-ThinArtifacts -Text ($out -join "`n")
        $final = [regex]::Replace($final, '(?m)^\s*$\r?\n^\s*$\r?\n^\s*$\r?\n+', "`n`n")
        [IO.File]::WriteAllText($path, $final, [Text.UTF8Encoding]::new($false))
        Write-Host "Processed: $($ch.File) (inherit from line $inheritStart; thinned $($stats.SubsectionsThinned) subsections)"
    }

    $vlines = if ($Apply -and -not $VerifyOnly) { $out.ToArray() } else { $lines }
    $vblocks = Expand-Blocks -Blocks (Split-Subsections -Lines $vlines) -InheritStart $inheritStart
    foreach ($block in $vblocks) {
        if ($block.Inherit) { continue }
        $joined = $block.Lines -join "`n"
        $count = Count-ChapterMentions -Text $joined
        if ($count -gt 1) {
            $stats.Violations += "$($ch.File):$($block.Start): Chapter~ count=$count"
        }
    }

    $checkLines = if ($Apply -and -not $VerifyOnly) { $out.ToArray() } else { $lines }
    for ($i = 0; $i -lt $checkLines.Count; $i++) {
        foreach ($b in $ban) {
            if ($checkLines[$i] -match [regex]::Escape($b)) {
                $stats.Violations += "$($ch.File):$($i+1): banned '$b'"
            }
        }
    }

    $allViolations += $stats.Violations
    $chapterReports += $stats
}

if ($Apply -and -not $VerifyOnly) {
    foreach ($r in $chapterReports) {
        $reportPath = Join-Path $toc ("VOL-I-PHASE8C-ARCHITECTURE-INVISIBILITY-CH0{0}-REPORT.md" -f $r.Chapter)
        $status = if ($r.Violations.Count -eq 0) { 'PASS' } else { 'FAIL' }
        $body = @(
            "# Phase VIII-C - Architecture Invisibility (Chapter $($r.Chapter))",
            "",
            "**Status:** $status",
            "**File:** ``latex/$($r.File)``",
            "**Inheritance anchor line:** $($r.InheritStart)",
            "",
            "## Applied",
            "- Title renames: $($r.TitleFixes)",
            "- Pointer / lexicon fixes: $($r.PointerFixes)",
            "- Subsections thinned to <=1 ``Chapter~`` mention: $($r.SubsectionsThinned)",
            "",
            "## Rules",
            "- Rename visible architecture titles (Operator Chains -> Radiation Maps)",
            "- Delete forward-pointer artifacts",
            "- Cross-chapter meta unlimited only in inheritance section (sec:ch01.7 / sec:ch02.11 / sec:ch3inherit / sec:ch4110)",
            "- Elsewhere <=1 explicit ``Chapter~`` per subsection",
            ""
        )
        if ($r.Violations.Count -gt 0) {
            $body += "## Violations ($($r.Violations.Count))"
            $body += ($r.Violations | ForEach-Object { "- $_" })
        } else {
            $body += "## Violations", "- none"
        }
        $body -join "`n" | Set-Content -Path $reportPath -Encoding UTF8
        Write-Host "Report: $reportPath"
    }
}

if ($allViolations.Count -gt 0) {
    Write-Host "FAIL: $($allViolations.Count) VIII-C violations:"
    $allViolations | Select-Object -First 80 | ForEach-Object { Write-Host "  $_" }
    exit 1
}
Write-Host 'PASS: Phase VIII-C architecture invisibility gate.'
exit 0
