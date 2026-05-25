param(
    [string]$InputPath = (Join-Path $PSScriptRoot "..\TOC\TOC-master-19chapters-ULTIMATE-FINAL.txt"),
    [string]$OutputPath = (Join-Path $PSScriptRoot "..\TOC\TOC-master-19chapters-ULTIMATE-V2-subsections.txt")
)

Set-StrictMode -Version Latest
$ErrorActionPreference = "Stop"

function Get-SectionTag {
    param([string]$line)
    if ($line -match '\[DEFER\]') { return '[DEFER]' }
    if ($line -match '\[FIG\+PROB\]') {
        if ($line -match '\[USE ([^\]]+)\]') { return "[FIG+PROB][USE $($Matches[1])]" }
        return '[FIG+PROB]'
    }
    if ($line -match '\[USE ([^\]]+)\]') { return "[USE $($Matches[1])]" }
    if ($line -match '\[HOME\]') { return '[HOME]' }
    return '[HOME]'
}

function Trim-TagSuffix {
    param([string]$title)
    return (($title -replace '\s*\[.*$', '').Trim())
}

function Add-IntroSubsections {
    param(
        [int]$ch, [int]$sec, [string]$base, [string]$tag,
        [System.Collections.Generic.List[string]]$out
    )
    $out.Add("$ch.$sec.1 Scope conditions and chapter assumptions $tag")
    $out.Add("$ch.$sec.2 Forward inheritance map and required prior results $tag")
    $out.Add("$ch.$sec.3 Roadmap to technical development in this chapter $tag")
}

function Add-SummarySubsections {
    param(
        [int]$ch, [int]$sec, [string]$tag,
        [System.Collections.Generic.List[string]]$out
    )
    $out.Add("$ch.$sec.1 Structures established in this chapter [DEFER]")
    $out.Add("$ch.$sec.2 Concepts explicitly deferred to later chapters [DEFER]")
    $out.Add("$ch.$sec.3 Transition logic to the next chapter [DEFER]")
}

function Add-ExampleSubsections {
    param(
        [int]$ch, [int]$sec, [string]$base, [string]$tag,
        [System.Collections.Generic.List[string]]$out
    )
    $out.Add("$ch.$sec.1 Canonical problem on ${base}: formulation and full derivation $tag")
    $out.Add("$ch.$sec.2 Boundary-case problem on ${base}: asymptotics and limits $tag")
    $out.Add("$ch.$sec.3 Reconstruction/conditioning problem on ${base}: operator view $tag")
    $out.Add("$ch.$sec.4 Physical-meaning synthesis problem on ${base}: interpretation constraints $tag")
}

function Add-TechnicalSubsections {
    param(
        [int]$ch, [int]$sec, [string]$base, [string]$tag,
        [System.Collections.Generic.List[string]]$out
    )
    $out.Add("$ch.$sec.1 Formal statement and admissibility framework for $base $tag")
    $out.Add("$ch.$sec.2 Core theorem/derivation for $base with full proof chain $tag")
    $out.Add("$ch.$sec.3 Physical interpretation and boundary-of-validity analysis for $base $tag")
    $out.Add("$ch.$sec.4 Scaling, conditioning, and forward implications of $base $tag")
}

$raw = Get-Content -Path $InputPath -Encoding UTF8
$lines = $raw | ForEach-Object { $_.TrimEnd() }

$out = [System.Collections.Generic.List[string]]::new()
$out.Add("# ===============================================================================")
$out.Add("# ULTIMATE TOC VERSION-2 (x.y.z expansion)")
$out.Add("# Source: TOC-master-19chapters-ULTIMATE-FINAL.txt")
$out.Add("# Rule: subsection tags inherit exact section ownership (HOME/USE/DEFER).")
$out.Add("# ===============================================================================")
$out.Add("")

$currentChapter = 0
$sectionCount = 0
$subsectionCount = 0
$chapterSubCount = @{}

foreach ($line in $lines) {
    if ([string]::IsNullOrWhiteSpace($line)) {
        if ($out.Count -gt 0 -and $out[$out.Count - 1] -ne "") { $out.Add("") }
        continue
    }

    if ($line.StartsWith("#")) {
        if ($line -like "# END*") { continue }
        $out.Add($line)
        continue
    }

    if ($line -match '^Chapter\s+(\d+)\s+-\s+(.+)$') {
        $currentChapter = [int]$Matches[1]
        if (-not $chapterSubCount.ContainsKey($currentChapter)) { $chapterSubCount[$currentChapter] = 0 }
        $out.Add($line)
        continue
    }

    if ($line -match '^(\d+)\.(\d+)\s+(.+)$') {
        $ch = [int]$Matches[1]
        $sec = [int]$Matches[2]
        $titleRaw = $Matches[3].Trim()
        $sectionCount++
        $tag = Get-SectionTag -line $titleRaw
        $base = Trim-TagSuffix -title $titleRaw
        $out.Add("$ch.$sec $base $tag")

        $before = $out.Count
        if ($sec -eq 0) {
            Add-IntroSubsections -ch $ch -sec $sec -base $base -tag $tag -out $out
        } elseif ($base -match '(?i)worked problems|examples') {
            Add-ExampleSubsections -ch $ch -sec $sec -base $base -tag $tag -out $out
        } elseif ($base -match '(?i)synthesis and forward map') {
            Add-SummarySubsections -ch $ch -sec $sec -tag $tag -out $out
        } else {
            Add-TechnicalSubsections -ch $ch -sec $sec -base $base -tag $tag -out $out
        }
        $added = ($out.Count - $before)
        $subsectionCount += $added
        $chapterSubCount[$ch] += $added
        $out.Add("")
    }
}

$out.Add("# ===============================================================================")
$out.Add("# Counts")
$out.Add("# Sections: $sectionCount")
$out.Add("# Subsections (x.y.z): $subsectionCount")
$out.Add("# ===============================================================================")

[System.IO.File]::WriteAllLines($OutputPath, $out, [System.Text.UTF8Encoding]::new($false))
Write-Host "Generated: $OutputPath"
Write-Host "Sections: $sectionCount"
Write-Host "Subsections: $subsectionCount"
Write-Host "Chapter-wise subsection counts:"
foreach ($k in ($chapterSubCount.Keys | Sort-Object)) {
    Write-Host ("  Ch{0}: {1}" -f $k, $chapterSubCount[$k])
}
