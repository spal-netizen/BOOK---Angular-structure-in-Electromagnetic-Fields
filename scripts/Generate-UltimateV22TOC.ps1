param(
    [string]$InputPath = (Join-Path $PSScriptRoot "..\TOC\TOC-master-19chapters-ULTIMATE-V2.1-semantic.txt"),
    [string]$OutputPath = (Join-Path $PSScriptRoot "..\TOC\TOC-master-19chapters-ULTIMATE-V2.2-editorial-polish.txt")
)

Set-StrictMode -Version Latest
$ErrorActionPreference = "Stop"

function Split-BodyAndTags {
    param([string]$text)
    $working = $text.Trim()
    $tags = [System.Collections.Generic.List[string]]::new()

    while ($working -match '^(.*?)(\s*(\[[^\]]+\]))$') {
        $working = $Matches[1].TrimEnd()
        $tags.Insert(0, $Matches[3])
    }

    return @{
        Body = $working
        Tags = ($tags -join "")
    }
}

function Polish-SubsectionBody {
    param([string]$body)

    $s = $body.Trim()

    $replacements = @(
        @('Scope assumptions and mathematical domain for', 'Scope and mathematical domain for'),
        @('Inheritance map of prerequisites governing', 'Prerequisite inheritance map for'),
        @("Logical route from (.+?) to the chapter's proof-bearing sections in the .+$", 'Logical route from $1 to the chapter proof sequence'),
        @('Formal statement, admissibility envelope, and notation for', 'Formal statement, admissibility, and notation for'),
        @('Primary theorem or construction for', 'Primary theorem or construction for'),
        @('with full proof pathway', 'with full proof'),
        @('Physical interpretation and validity boundary for', 'Physical interpretation and validity limits for'),
        @('Scaling behavior, conditioning effects, and forward-use implications of', 'Scaling, conditioning, and forward implications of'),
        @('Canonical benchmark problem for', 'Canonical benchmark on'),
        @('Limiting-regime problem for', 'Limiting-regime problem on'),
        @('Conditioning and reconstruction problem for', 'Conditioning and reconstruction problem on'),
        @('Physical-meaning synthesis problem for', 'Physical-meaning synthesis problem on'),
        @(': full derivation and checks', ': full derivation and checks'),
        @(': asymptotics and physical admissibility', ': asymptotics and physical admissibility'),
        @(': operator-level diagnosis', ': operator-level diagnosis'),
        @(': measurable consequences', ': measurable consequences'),
        @('Theorems, constructions, and limits established in this chapter', 'Theorems, constructions, and limits established'),
        @('Results deferred by design to later chapters under HOME/USE policy', 'Results deferred to later chapters under HOME/USE policy'),
        @('Bridge theorem logic and dependency chain into the next chapter', 'Bridge logic and dependency chain into the next chapter'),
        @('\s+within the [^:]+$', ''),
        @('\s+in the [^:]+ framework', ''),
        @('\s{2,}', ' ')
    )

    foreach ($pair in $replacements) {
        $s = [regex]::Replace($s, $pair[0], $pair[1])
    }

    return $s.Trim()
}

$lines = Get-Content -Path $InputPath -Encoding UTF8
$out = [System.Collections.Generic.List[string]]::new()

$sectionCount = 0
$subsectionCount = 0
$chapterSubCount = @{}

foreach ($line in $lines) {
    if ($line -match '^Chapter\s+(\d+)\s+-') {
        $ch = [int]$Matches[1]
        if (-not $chapterSubCount.ContainsKey($ch)) { $chapterSubCount[$ch] = 0 }
        $out.Add($line)
        continue
    }

    if ($line -match '^(\d+)\.(\d+)\.(\d+)\s+(.+)$') {
        $ch = [int]$Matches[1]
        $num = "$($Matches[1]).$($Matches[2]).$($Matches[3])"
        $payload = $Matches[4]
        $split = Split-BodyAndTags -text $payload
        $newBody = Polish-SubsectionBody -body $split.Body
        $out.Add("$num $newBody $($split.Tags)".Trim())
        $subsectionCount++
        $chapterSubCount[$ch] += 1
        continue
    }

    if ($line -match '^(\d+)\.(\d+)\s+') {
        $sectionCount++
    }

    $out.Add($line)
}

[System.IO.File]::WriteAllLines($OutputPath, $out, [System.Text.UTF8Encoding]::new($false))

Write-Host "Generated: $OutputPath"
Write-Host "Sections (preserved): $sectionCount"
Write-Host "Subsections (preserved): $subsectionCount"
Write-Host "Chapter-wise subsection counts:"
foreach ($k in ($chapterSubCount.Keys | Sort-Object)) {
    Write-Host ("  Ch{0}: {1}" -f $k, $chapterSubCount[$k])
}
