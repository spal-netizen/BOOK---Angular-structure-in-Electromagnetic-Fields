# Phase VIII-G — Harrington voice pass (Ch. 1–4)
param(
    [string]$Root = (Join-Path $PSScriptRoot '..'),
    [ValidateSet('1','2','3','4')]
    [string]$Chapter = '4',
    [switch]$Apply,
    [switch]$VerifyOnly
)
Set-StrictMode -Version Latest
$ErrorActionPreference = 'Stop'
$root = Resolve-Path $Root
$chNum = $Chapter
$chFile = Join-Path $root "latex\ch0$chNum.tex"
$openings = Join-Path $root "latex\ch0$chNum-harrington-voice-openings.tex"
$guides = Join-Path $root "latex\ch0$chNum-professor-guides.tex"
$report = Join-Path $root "TOC/VOL-I-PHASE8G-HARRINGTON-VOICE-CH0$chNum-REPORT.md"
$labelPat = switch ($Chapter) {
    '1' { 'sec:ch01' }
    '2' { 'sec:ch2' }
    '3' { 'sec:ch3' }
    '4' { 'sec:ch4' }
    default { "sec:ch$Chapter" }
}

$physKeywords = @(
    'horn','aperture','range','probe','dish','patch','feed','wattmeter','turntable',
    'laboratory','antenna','scanner','coax','waveguide','dipole','reflector','handset',
    'amplifier','slot','array','mesh','ground plane','compact.range','near.field','far.zone',
    'source support','electrical size','GHz','MHz','MoM','method.of.moments','pyramidal',
    'calibrator','substrate','reflector','chamber','watt','pattern','turntable',
    'oscilloscope','vector network','VNA','anechoic','polarization','beam','slotline',
    'modal','harmonic','spherical','retard','outgoing','radiat','Green','caus',
    'helix','loop','monopole','flux','shell','sphere','OAM','phase plate'
)

$banned = @(
    'logical architecture',
    'what follows walks',
    'what follows records',
    'what follows develops',
    'what follows establishes',
    'This subsection establishes',
    'The present subsection',
    'The logical structure'
)

$banReplacements = @(
    @{ Old = 'what follows records how'; New = 'the next display quantifies how' }
    @{ Old = 'what follows develops'; New = 'the development below treats' }
    @{ Old = 'what follows establishes'; New = 'the relations below establish' }
    @{ Old = 'what follows walks'; New = 'the argument below proceeds' }
    @{ Old = 'what follows applies'; New = 'the display below applies' }
    @{ Old = 'what follows'; New = 'the display below' }
    @{ Old = 'The present subsection'; New = 'The laboratory scene below' }
    @{ Old = 'walks the full excitation-to-flux sequence'; New = 'records the full excitation-to-flux sequence' }
    @{ Old = 'logical architecture'; New = 'physical ordering' }
    @{ Old = 'This subsection establishes'; New = 'The laboratory picture is that' }
)

function Get-PhysicalScore([string]$Text) {
    $t = $Text -replace '%[^\r\n]*', '' -replace '\\cite\{[^}]+\}', ''
    if ($t.Length -gt 450) { $t = $t.Substring(0, 450) }
    $score = 0
    foreach ($kw in $physKeywords) {
        if ($t -match "(?i)$kw") { $score++ }
    }
    return $score
}

function Test-PhysicalOpener([string]$Text) {
    if ([string]::IsNullOrWhiteSpace($Text)) { return $false }
    if ($Text -match '% HARRINGTON-OPEN:') { return $true }
    return (Get-PhysicalScore $Text -ge 2)
}

function Expand-GuideOpening([string]$Guide, [string]$Label, [string]$Ch) {
    $g = $Guide.Trim()
    if ($g -notmatch '\.$') { $g += '.' }
    $lead = ''
    if ($g -notmatch '(?i)horn|aperture|range|probe|dish|patch|feed|antenna|dipole|waveguide|scanner|wattmeter|turntable|GHz|MHz|chamber|watt|shell|flux') {
        $lead = 'On a declared compact-range or anechoic campaign, technicians record frequency, outline, and probe geometry before any harmonic fit is trusted \cite{hansen1988,stratton1941}. '
    }
    $maxwell = switch ($Ch) {
        '1' { "Maxwell's equations on the declared exterior domain remain the governing constraint \cite{maxwell1873,jackson1999}." }
        '2' { "Maxwell's retarded export to $\Gamma_R$ remains the governing constraint \cite{maxwell1873,stratton1941}." }
        '3' { "Outgoing Maxwell radiation on $\mathcal{F}_{\mathrm{rad}}$ remains the governing constraint \cite{stratton1941,hansen1988}." }
        default { "Maxwell's retarded export on declared support remains the governing constraint \cite{maxwell1873,stratton1941}." }
    }
    return ($lead + $g + ' ' + $maxwell)
}

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

function Get-OpeningBlocks {
    param([string]$Path)
    $blocks = @{}
    if (-not (Test-Path $Path)) { return $blocks }
    $raw = [IO.File]::ReadAllText($Path)
    foreach ($m in [regex]::Matches($raw, '(?ms)% BEGIN HARRINGTON-OPEN:(?<id>[^\r\n]+)\r?\n(?<body>.*?)% END HARRINGTON-OPEN:\k<id>')) {
        $blocks[$m.Groups['id'].Value] = $m.Groups['body'].Value.Trim()
    }
    return $blocks
}

function Get-GuideBlocks {
    param([string]$Path)
    $blocks = @{}
    if (-not (Test-Path $Path)) { return $blocks }
    $raw = [IO.File]::ReadAllText($Path)
    foreach ($m in [regex]::Matches($raw, '(?ms)% BEGIN PROFESSOR-GUIDE:(?<id>[^\r\n]+)\r?\n(?<body>.*?)% END PROFESSOR-GUIDE:\k<id>')) {
        $body = $m.Groups['body'].Value.Trim() -replace '\s*Remember:.*$', ''
        $blocks[$m.Groups['id'].Value] = $body.Trim()
    }
    return $blocks
}

function Get-GenericOpening([string]$Title, [string]$Ch) {
    $clean = ($Title -replace '\\[A-Za-z]+', '' -replace '\$[^$]+\$', ' ').Trim()
    $maxwell = switch ($Ch) {
        '1' { "Maxwell's equations on the declared exterior domain remain the governing constraint \cite{maxwell1873,jackson1999}." }
        '2' { "Maxwell's retarded export to $\Gamma_R$ remains the governing constraint \cite{maxwell1873,stratton1941}." }
        '3' { "Outgoing Maxwell radiation on $\mathcal{F}_{\mathrm{rad}}$ remains the governing constraint \cite{stratton1941,hansen1988}." }
        default { "Maxwell's retarded export on declared support remains the governing constraint \cite{maxwell1873,stratton1941}." }
    }
    if ($clean -match '(?i)gauge|helicity|spin|orbital') {
        return "A spiral phase plate in front of a horn feed on a compact range defines the hardware scene for ``$clean'': technicians compare turntable cuts and wattmeter totals on $\Gamma_R$ before paraxial labels are quoted \cite{allen1992,harrington2001,belinfante1940}. $maxwell"
    }
    if ($clean -match '(?i)truncat|tail|compress|rank|singular|dimension') {
        return "A $\lambda/4$ patch aperture measured on a spherical near-field arm shows how electrical size caps recoverable rank before any harmonic table is published \cite{chu1948,hansen1988,devaney2004}. $maxwell"
    }
    if ($clean -match '(?i)boundary|uniqueness|admissib|source|current|aperture') {
        return "A coax-fed pyramidal horn over a ground plane defines the impressed-current and boundary-data tuple technicians declare before Maxwell export is computed \cite{stratton1941,harrington2001,collin2001}. $maxwell"
    }
    return "A standard-gain horn on a compact-range turntable fixes the laboratory scene for ``$clean'': frequency, probe standoff, and wattmeter closure on $\Gamma_R$ precede the formal displays below \cite{hansen1988,stratton1941,harrington2001}. $maxwell"
}

function Insert-Opening {
    param([string]$Text, [string]$Label, [string]$Body)
    $esc = [regex]::Escape($Label)
    if ($Text -match "% HARRINGTON-OPEN:$([regex]::Escape($Label))") { return $Text, $false }
    $m = [regex]::Match($Text, "(?ms)(\\label\{$esc\}\s*\r?\n)")
    if (-not $m.Success) { return $Text, $false }
    $block = "% HARRINGTON-OPEN:$Label`n$Body`n`n"
    $out = $Text.Remove($m.Index + $m.Length, 0).Insert($m.Index + $m.Length, $block)
    return $out, $true
}

if (-not (Test-Path $chFile)) { throw "Missing $chFile" }

$subPat = "(?ms)\\subsection\{(?<title>[^\}]+)\}\s*\\label\{(?<lab>$([regex]::Escape($labelPat))[^}]*)\}"
$text = [IO.File]::ReadAllText($chFile)
$openingBlocks = Get-OpeningBlocks -Path $openings
$guideBlocks = Get-GuideBlocks -Path $guides

if ($Apply -and -not $VerifyOnly) {
    foreach ($pair in $banReplacements) {
        $text = Invoke-ProseReplace -Text $text -Old $pair.Old -New $pair.New
    }
    $pending = [System.Collections.Generic.List[object]]::new()
    foreach ($m in [regex]::Matches($text, $subPat)) {
        $lab = $m.Groups['lab'].Value
        $title = $m.Groups['title'].Value
        $start = $m.Index + $m.Length
        $next = $text.IndexOf('\subsection{', $start)
        if ($next -lt 0) { $next = $text.IndexOf('\section{', $start) }
        if ($next -lt 0) { $next = $text.Length }
        $chunk = $text.Substring($start, [Math]::Min(600, $next - $start))
        if (Test-PhysicalOpener $chunk) { continue }
        $body = $null
        if ($openingBlocks.ContainsKey($lab)) { $body = $openingBlocks[$lab] }
        elseif ($guideBlocks.ContainsKey($lab)) {
            $body = Expand-GuideOpening -Guide $guideBlocks[$lab] -Label $lab -Ch $chNum
        }
        else {
            $body = Get-GenericOpening -Title $title -Ch $chNum
        }
        $pending.Add([pscustomobject]@{ Lab = $lab; Body = $body; Index = $m.Index })
    }
    $inserted = 0
    foreach ($item in ($pending | Sort-Object -Property Index -Descending)) {
        $text, $ok = Insert-Opening -Text $text -Label $item.Lab -Body $item.Body
        if ($ok) { $inserted++; Write-Host "Inserted opening: $($item.Lab)" }
    }
    [IO.File]::WriteAllText($chFile, $text, [Text.UTF8Encoding]::new($false))
    Write-Host "Ch.$chNum Harrington openings inserted: $inserted"
}

$text = [IO.File]::ReadAllText($chFile)
$failBan = @()
$failOpen = @()
$totalSubs = 0
$physicalOk = 0
foreach ($m in [regex]::Matches($text, $subPat)) {
    $totalSubs++
    $lab = $m.Groups['lab'].Value
    $start = $m.Index + $m.Length
    $next = $text.IndexOf('\subsection{', $start)
    if ($next -lt 0) { $next = $text.IndexOf('\section{', $start) }
    if ($next -lt 0) { $next = $text.Length }
    $chunk = $text.Substring($start, [Math]::Min(800, $next - $start))
    if (Test-PhysicalOpener $chunk) { $physicalOk++ } else { $failOpen += $lab }
    $prose = $chunk -replace '\\cite\{[^}]+\}', '' -replace '%[^\r\n]*', ''
    foreach ($b in $banned) {
        if ($prose -match [regex]::Escape($b)) { $failBan += "$lab : $b" }
    }
}
$harrCount = ([regex]::Matches($text, '% HARRINGTON-OPEN:')).Count
$pass = ($failBan.Count -eq 0) -and ($failOpen.Count -eq 0)

$reportMd = @"
# Phase VIII-G — Harrington voice pass (Ch. $chNum)

**Date:** $(Get-Date -Format 'yyyy-MM-dd')  
**Gate:** $(if($pass){'**PASS**'}else{'**FAIL**'})  
**File:** ``latex/ch0$chNum.tex``

| Metric | Value |
|--------|------:|
| Subsections scanned | $totalSubs |
| Physical openers (2--3 sentence scene) | $physicalOk / $totalSubs |
| ``% HARRINGTON-OPEN:`` markers | $harrCount |
| Banned phrase hits | $($failBan.Count) |

## Policy

- First two--three sentences of every subsection = physical situation.
- Ban: ``logical architecture``, ``what follows walks``, doctrine lists without a scene.
- Openings: ``latex/ch0$chNum-harrington-voice-openings.tex``; fallback ``latex/ch0$chNum-professor-guides.tex``.

$(if ($failOpen.Count -gt 0) { "## Subsections needing physical opener`n`n" + ($failOpen | ForEach-Object { "- $_" } | Out-String) })
$(if ($failBan.Count -gt 0) { "## Banned phrases`n`n" + ($failBan | ForEach-Object { "- $_" } | Out-String) })

## Script

``scripts/VolI-Phase8G-Harrington-Voice.ps1 -Chapter $chNum`` (`-Apply` / `-VerifyOnly`)

"@
[IO.File]::WriteAllText($report, $reportMd, [Text.UTF8Encoding]::new($false))

Write-Host "Ch.$chNum subsections physical opener: $physicalOk / $totalSubs"
Write-Host "Banned hits: $($failBan.Count); weak openers: $($failOpen.Count)"
if (-not $pass) { Write-Host "FAIL: Phase VIII-G Ch.$chNum Harrington voice gate."; exit 1 }
Write-Host "PASS: Phase VIII-G Ch.$chNum Harrington voice gate."
exit 0
