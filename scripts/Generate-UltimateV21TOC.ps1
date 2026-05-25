param(
    [string]$InputPath = (Join-Path $PSScriptRoot "..\TOC\TOC-master-19chapters-ULTIMATE-FINAL.txt"),
    [string]$OutputPath = (Join-Path $PSScriptRoot "..\TOC\TOC-master-19chapters-ULTIMATE-V2.1-semantic.txt")
)

Set-StrictMode -Version Latest
$ErrorActionPreference = "Stop"

$chapterContext = @{
    1  = "foundational symmetry and observability framework"
    2  = "operator-domain and radiation-mapping framework"
    3  = "eigenfield representation and SO(3) structure"
    4  = "finite-geometry realizability and truncation structure"
    5  = "canonical radiation-formation mechanisms"
    6  = "discrete sampling and cyclic-array symmetry"
    7  = "continuous-boundary and reflector conversion physics"
    8  = "structured-surface and finite-rank transformation physics"
    9  = "free-space transport and invariant propagation structure"
    10 = "dispersive/anisotropic linear-media evolution"
    11 = "stochastic transport and turbulence-driven redistribution"
    12 = "field-matter exchange and torque/force balance"
    13 = "measurement-operator and estimation-geometry framework"
    14 = "finite-rank information and capacity structure"
    15 = "end-to-end communication operator chain"
    16 = "sensing and inverse-inference performance limits"
    17 = "passive observation and remote-inference constraints"
    18 = "validity-judgment and admissible interpretation discipline"
    19 = "open-problem classification and constraint-preserving extensions"
}

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

function Clean-SectionText {
    param([string]$title)
    return (($title -replace '\s*\[.*$', '').Trim())
}

function Add-IntroSubsections {
    param(
        [int]$ch, [int]$sec, [string]$base, [string]$tag, [string]$ctx,
        [System.Collections.Generic.List[string]]$out
    )
    $out.Add("$ch.$sec.1 Scope assumptions and mathematical domain for ${base} in the ${ctx} $tag")
    $out.Add("$ch.$sec.2 Inheritance map of prerequisites governing ${base} within the ${ctx} $tag")
    $out.Add("$ch.$sec.3 Logical route from ${base} to the chapter's proof-bearing sections in the ${ctx} $tag")
}

function Add-SummarySubsections {
    param(
        [int]$ch, [int]$sec, [System.Collections.Generic.List[string]]$out
    )
    $out.Add("$ch.$sec.1 Theorems, constructions, and limits established in this chapter [DEFER]")
    $out.Add("$ch.$sec.2 Results deferred by design to later chapters under HOME/USE policy [DEFER]")
    $out.Add("$ch.$sec.3 Bridge theorem logic and dependency chain into the next chapter [DEFER]")
}

function Add-ExampleSubsections {
    param(
        [int]$ch, [int]$sec, [string]$base, [string]$tag, [string]$ctx,
        [System.Collections.Generic.List[string]]$out
    )
    $out.Add("$ch.$sec.1 Canonical benchmark problem for ${base} in the ${ctx}: full derivation and checks $tag")
    $out.Add("$ch.$sec.2 Limiting-regime problem for ${base} in the ${ctx}: asymptotics and physical admissibility $tag")
    $out.Add("$ch.$sec.3 Conditioning and reconstruction problem for ${base} in the ${ctx}: operator-level diagnosis $tag")
    $out.Add("$ch.$sec.4 Physical-meaning synthesis problem for ${base} in the ${ctx}: measurable consequences $tag")
}

function Add-TechnicalSubsections {
    param(
        [int]$ch, [int]$sec, [string]$base, [string]$tag, [string]$ctx,
        [System.Collections.Generic.List[string]]$out
    )
    $out.Add("$ch.$sec.1 Formal statement, admissibility envelope, and notation for ${base} within the ${ctx} $tag")
    $out.Add("$ch.$sec.2 Primary theorem or construction for ${base} in the ${ctx} with full proof pathway $tag")
    $out.Add("$ch.$sec.3 Physical interpretation and validity boundary for ${base} in the ${ctx} $tag")
    $out.Add("$ch.$sec.4 Scaling behavior, conditioning effects, and forward-use implications of ${base} in the ${ctx} $tag")
}

$raw = Get-Content -Path $InputPath -Encoding UTF8
$lines = $raw | ForEach-Object { $_.TrimEnd() }

$out = [System.Collections.Generic.List[string]]::new()
$out.Add("# ===============================================================================")
$out.Add("# ULTIMATE TOC VERSION-2.1 (semantic x.y.z refinement)")
$out.Add("# Source: TOC-master-19chapters-ULTIMATE-FINAL.txt")
$out.Add("# Rule: ownership tags preserved exactly; counts preserved.")
$out.Add("# ===============================================================================")
$out.Add("")

$sectionCount = 0
$subsectionCount = 0
$chapterSubCount = @{}
$currentChapter = 0

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
        $base = Clean-SectionText -title $titleRaw
        $ctx = $chapterContext[$ch]
        if (-not $ctx) { $ctx = "chapter-specific framework" }

        $out.Add("$ch.$sec $base $tag")

        $before = $out.Count
        if ($sec -eq 0) {
            Add-IntroSubsections -ch $ch -sec $sec -base $base -tag $tag -ctx $ctx -out $out
        } elseif ($base -match '(?i)worked problems|examples') {
            Add-ExampleSubsections -ch $ch -sec $sec -base $base -tag $tag -ctx $ctx -out $out
        } elseif ($base -match '(?i)synthesis and forward map') {
            Add-SummarySubsections -ch $ch -sec $sec -out $out
        } else {
            Add-TechnicalSubsections -ch $ch -sec $sec -base $base -tag $tag -ctx $ctx -out $out
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
