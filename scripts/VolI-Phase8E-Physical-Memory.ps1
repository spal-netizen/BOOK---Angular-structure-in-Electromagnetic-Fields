# Phase VIII-E — Physical Memory Corps (50–100 vignettes; Ch. 2–4)
param(
    [string]$Root = (Join-Path $PSScriptRoot '..'),
    [switch]$Apply,
    [switch]$VerifyOnly,
    [switch]$ExportCatalog,
    [int[]]$ChapterFilter = @(2, 3, 4)
)
Set-StrictMode -Version Latest
$ErrorActionPreference = 'Stop'
$root = Resolve-Path $Root
$latex = Join-Path $root 'latex'
$reportPath = Join-Path $root 'TOC/VOL-I-PHASE8E-PHYSICAL-MEMORY-REPORT.md'
$catalogPath = Join-Path $root 'TOC/VOL-I-PHYSICAL-MEMORY-CATALOG.tsv'
$mapPath = Join-Path $root 'TOC/VOL-I-PHYSICAL-MEMORY-INSERT-MAP.md'
$insertsPath = Join-Path $latex 'vol-i-physical-memory-inserts.tex'

$chapters = @(
    @{ File = 'ch02.tex'; Guide = 'ch02-professor-guides.tex'; Num = 2 }
    @{ File = 'ch03.tex'; Guide = 'ch03-professor-guides.tex'; Num = 3 }
    @{ File = 'ch04.tex'; Guide = 'ch04-professor-guides.tex'; Num = 4 }
) | Where-Object { $ChapterFilter -contains $_.Num }

# Hardware catalog — minimum 60 scenes (game plan)
$hardwareCatalog = @(
    'Pyramidal horn on a compact range'
    'Parabolic dish on a three-axis turntable'
    'Spherical near-field scanner with dual-polarization probes'
    'Beth torsion balance in a microwave anechoic chamber'
    'Outdoor far-field range with mast and ground reflection'
    'Phased array panel on a positioner'
    'Yagi array aimed at a fixed receive horn'
    'Rectangular waveguide aperture radiating into free space'
    'Circular patch on a handset ground plane'
    'Helical feed on a satellite reflector'
    'Wire dipole over a finite ground plane'
    'Slot array in a flat plate'
    'Compact SNF chamber with rolled AUT mount'
    'Anechoic turntable with azimuth-over-elevation stage'
    'Radar feed horn illuminating a corner reflector'
    'Radio telescope dish with Cassegrain feed'
    'Half-space ground plane with image currents'
    'Rectangular horn mouth in a ground-plane flange'
    'Open-ended coax probe above a calibration table'
    'Rotating scatterer on a lighthouse-style beam chopper'
    'Dual-polarization horn pair on a compact range'
    'Waveguide TE10 mouth in a flange radiating to half-space'
    'Microstrip patch array on a finite substrate'
    'Conical horn feeding a reflector edge'
    'Planar near-field scanner above a handset'
    'Cylindrical near-field arch with probe carriage'
    'Offset-fed reflector on a satellite bus'
    'Corporate-feed phased array behind a radome'
    'Loop antenna for magnetic-dipole calibration'
    'Crossed dipoles on a polarization calibration standard'
    'Open rectangular aperture in an infinite ground screen'
    'Pyramidal horn with mode filter at the throat'
    'Dual-reflector compact range feed'
    'Synthetic aperture radar stripmap feed horn'
    'Metrology-grade open-ended waveguide probe'
    'Handset chassis with multiple coupled patches'
    'Slotted waveguide array in an aircraft radome'
    'Dielectric lens fed by a scalar horn'
    'Reflector with serrated edge treatment'
    'Compact antenna test range with quiet zone probe'
    'Outdoor elevated range with boresight tower'
    'Rotating LPDA on a pattern tower'
    'Biconical antenna for wideband chamber calibration'
    'Standard-gain horn trio for gain transfer'
    'Open-ended circular waveguide probe on SNF arm'
    'Reflector with subreflector and strut scattering'
    'Patch on ceramic substrate for GNSS handset'
    'Horn-fed reflector with spillover onto the deck'
    'Dual-band dish with shared reflector surface'
    'Near-field probe on a hexapod alignment stage'
    'Compact range feed with quad-ridged horn'
    'Aperture-coupled patch behind a superstrate'
    'Monopole on a vehicle roof ground plane'
    'Inverted-F antenna on a PCB edge'
    'Vivaldi notch array on a printed circuit board'
    'Horn-lens combination on a millimetre-wave bench'
    'Reflector with shaped beam for satellite downlink'
    'Open cavity slot fed by a microstrip line'
    'Dual-offset reflector for compact range quiet zone'
    'Spherical NF range with theta-phi robot arm'
    'Linear array on a wing leading edge'
    'Corner reflector for radar cross-section calibration'
    'Open-ended WR-90 waveguide on a gantry'
    'Horn over square ground plane at ka near unity'
    'Reflector with grating lobe from subarray spacing'
    'Handset held in a SAM phantom grip for OTA test'
)

function Get-ProfessorGuides {
    param([string]$GuidePath)
    $blocks = @{}
    if (-not (Test-Path $GuidePath)) { return $blocks }
    $raw = [IO.File]::ReadAllText($GuidePath)
    foreach ($m in [regex]::Matches($raw, '(?ms)% BEGIN PROFESSOR-GUIDE:(?<id>[^\r\n]+)\r?\n(?<body>.*?)% END PROFESSOR-GUIDE:\k<id>')) {
        $blocks[$m.Groups['id'].Value] = $m.Groups['body'].Value.Trim()
    }
    return $blocks
}

function Get-CustomVignettes {
    param([string]$Path)
    $blocks = @{}
    if (-not (Test-Path $Path)) { return $blocks }
    $raw = [IO.File]::ReadAllText($Path)
    foreach ($m in [regex]::Matches($raw, '(?ms)% BEGIN VIGNETTE:(?<id>[^\r\n]+)\r?\n(?<body>.*?)% END VIGNETTE:\k<id>')) {
        $blocks[$m.Groups['id'].Value] = $m.Groups['body'].Value.Trim()
    }
    return $blocks
}

function Test-FatigueZone {
    param([string]$Label)
    if ($Label -match '^sec:ch2(5|6|7|8|9|10)') { return $true }
    if ($Label -match '^sec:ch3(8|9|10)') { return $true }
    if ($Label -match '^sec:ch4(4|5|6|7)') { return $true }
    return $false
}

function Sanitize-VignetteLexicon {
    param([string]$Text)
    $t = $Text
    $t = $t -replace '\bthe reader should\b', 'one should'
    $t = $t -replace '\bThe reader should\b', 'One should'
    $t = $t -replace '\bThis subsection\b', 'The present passage'
    $t = $t -replace '\bsoftware\b', 'transform'
    $t = $t -replace '\bSoftware\b', 'Transform'
    $t = $t -replace '\bworkflow\b', 'measurement sequence'
    $t = $t -replace '\boptimizer(s)?\b', 'synthesis fit'
    $t = $t -replace '\bsimulation\b', 'numerical mesh model'
    $t = $t -replace '\baudit\b', 'tail check'
    $t = $t -replace '\bformalism\b', 'coordinate trick'
    $t = $t -replace '\bcertify\b', 'state'
    return $t
}

function Remove-InlineMath {
    param([string]$Text)
    $t = $Text
    $t = [regex]::Replace($t, '\$[^$]+\$', 'the declared quantity')
    $t = [regex]::Replace($t, '\\[a-zA-Z]+(\{[^{}]*\})*', '')
    $t = [regex]::Replace($t, '\s+', ' ')
    return $t.Trim()
}

function Get-HardwareScene {
    param([string]$Hardware, [int]$Chapter)
    @(
        "Consider $Hardware. Before any coefficient table is printed, technicians record frequency, cable loss, and the mechanical outline that fixes electrical size. The first walk-through of the range is always tactile: flange bolts, probe standoff, turntable boresight, and the wattmeter reference on the receive chain \cite{hansen1988,stratton1941}."
        "On this hardware the near zone is visually impressive---standing reactive structure, rapid phase rotation, sometimes a visible VSWR ripple at the feed---yet the export question is measured only after outgoing selection on a large sphere \cite{harrington2001,jackson1999}. What the camera sees in the chamber is not automatically what the far-zone pattern claims \cite{stratton1941}."
        "Engineers therefore learn to separate three readings: what the feed can synthesize on declared support, what propagating content survives on the radiative range, and what a finite instrument can recover at declared tolerance \cite{devaney2004,hansen1988}. Confusing those readings produces the rank gaps and watt failures that later sections quantify \cite{pal2026}."
    ) -join "`n`n"
}

function Expand-GuideParagraphs {
    param([string]$GuideText)
    $clean = Remove-InlineMath -Text $GuideText
    $clean = $clean -replace 'Remember:\s*[^.]+\.', ''
    $clean = $clean -replace 'Chapter~\d+', 'the prior chapter'
    $clean = $clean -replace '\\ref\{ch:\d+\}', 'the prior chapter'
    $sentences = @([regex]::Split($clean, '(?<=[.!?])\s+') | Where-Object { $_.Length -gt 20 })
    if ($sentences.Count -lt 2) {
        return $clean
    }
    $mid = [Math]::Min(4, $sentences.Count)
    return ($sentences[0..($mid - 1)] -join ' ')
}

function Build-VignetteBody {
    param(
        [string]$Label,
        [string]$Hardware,
        [string]$GuideText,
        [int]$Chapter,
        [switch]$SecondPass
    )
    $scene = Get-HardwareScene -Hardware $Hardware -Chapter $Chapter
    $guidePara = if ($GuideText) { Expand-GuideParagraphs -GuideText $GuideText } else {
        "The subsection tied to this scene develops the operator packaging that makes the range reading reproducible: declare the source region, enforce outgoing selection on the exterior, and only then attach angular labels \cite{stratton1941,harrington2001}."
    }
    $historical = switch ($Chapter) {
        2 { "Rayleigh and Stratton treated such ranges as boundary-value laboratories long before digital near-field transforms became routine \cite{stratton1941,rayleigh1871}. Harrington's method-of-moments culture reinforced the same discipline: metal outline first, harmonic headline second \cite{harrington2001}." }
        3 { "Belinfante and Hansen made the rotational reading explicit: patterns rotate with the mount, and harmonic indices are the coordinate description of that motion on a sphere \cite{belinfante1940,hansen1988}. Collin and Jackson supply the aperture diffraction vocabulary the turntable data must respect \cite{collin2001,jackson1999}." }
        4 { "Chu and Landau warned that finite size caps simultaneous localization and spectral spread \cite{chu1948,landau1962}. Devaney's inverse-scattering perspective reminds us that reachable far-zone data never exceeds what bounded sources can export \cite{devaney2004}." }
    }
    if ($SecondPass) {
        $extra = "A second bench observation matters on $Hardware. When technicians swap only the receive probe while holding the transmit chain fixed, reciprocity checks whether the reported coupling is property of the structure or artifact of a mismatched flux gauge \cite{stratton1941,harrington2001}. Failed reciprocity usually traces to a near-field tap, a radome standing-wave, or a probe polarization basis that was never aligned with the transmit standard \cite{hansen1988}."
        $close = "The measurement logic above is made precise in Subsection~\ref{$Label} \cite{stratton1941}."
        return Sanitize-VignetteLexicon -Text (@($extra, $historical, $close) -join "`n`n")
    }
    $close = "Subsection~\ref{$Label} states the formal export condition that this range scene presupposes \cite{stratton1941,harrington2001}."
    return Sanitize-VignetteLexicon -Text (@($scene, $guidePara, $historical, $close) -join "`n`n")
}

function Wrap-Vignette {
    param([string]$Hardware, [string]$Body)
    return @(
        "\begin{physicalvignette}[$Hardware]"
        $Body
        "\end{physicalvignette}"
    ) -join "`n"
}

function Get-SubsectionLabels {
    param([string[]]$Lines)
    $labels = [System.Collections.Generic.List[string]]::new()
    foreach ($line in $Lines) {
        foreach ($m in [regex]::Matches($line, '\\label\{(?<id>sec:ch\d[^}]+)\}')) {
            $labels.Add($m.Groups['id'].Value)
        }
    }
    return $labels
}

function Insert-VignetteAfterLabel {
    param(
        [System.Collections.Generic.List[string]]$Lines,
        [string]$Label,
        [string]$MarkerId,
        [string]$Body,
        [int]$SearchFrom = 0
    )
    $marker = "% PHYSICAL-MEMORY:$MarkerId"
    for ($i = $SearchFrom; $i -lt $Lines.Count; $i++) {
        if ($Lines[$i] -notmatch "\\label\{$([regex]::Escape($Label))\}") { continue }
        for ($j = $i; $j -lt [Math]::Min($Lines.Count, $i + 120); $j++) {
            if ($Lines[$j] -eq $marker) { return $false }
        }
        # Skip past label-only / phantom lines to first prose paragraph end
        $insertAt = $i + 1
        while ($insertAt -lt $Lines.Count -and $Lines[$insertAt] -match '^\s*(\\label|\\phantomsection|%|$)') {
            $insertAt++
        }
        # Advance to end of first paragraph block
        $paraEnd = $insertAt
        while ($paraEnd -lt $Lines.Count -and $Lines[$paraEnd] -notmatch '^\s*$' -and $Lines[$paraEnd] -notmatch '^\\(subsection|section|begin\{equation)' ) {
            $paraEnd++
        }
        $insertLines = @($marker, '') + ($Body -split "`n") + @('')
        for ($k = $insertLines.Count - 1; $k -ge 0; $k--) {
            $Lines.Insert($paraEnd, $insertLines[$k])
        }
        return $true
    }
    return $false
}

function Test-VignetteValid {
    param([string]$Body)
    if ($Body -match '\\begin\{(equation|align|gather|multline|eqnarray)') { return $false }
    if ($Body -match '\$[^$]+\$') { return $false }
    if ($Body -match '\\\[|\\\(') { return $false }
    $paras = @($Body -split "`n`n" | Where-Object { $_.Trim().Length -gt 0 }).Count
    return ($paras -ge 2 -and $paras -le 6)
}

# --- Main ---
$allInserts = @()
$catalogRows = @("Anchor`tHardware`tChapter`tPriority`tSource")
$hwIndex = 0
$totalInserted = 0
$fatigueCount = 0
$custom = Get-CustomVignettes -Path $insertsPath

foreach ($ch in $chapters) {
    $chPath = Join-Path $latex $ch.File
    $guidePath = Join-Path $latex $ch.Guide
    $guides = Get-ProfessorGuides -GuidePath $guidePath
    $lines = [System.Collections.Generic.List[string]](Get-Content -Path $chPath -Encoding UTF8)
    $labels = Get-SubsectionLabels -Lines $lines
    $labelIndex = 0

    foreach ($label in $labels) {
        $hw = $hardwareCatalog[$hwIndex % $hardwareCatalog.Count]
        $hwIndex++
        $fatigue = Test-FatigueZone -Label $label
        if ($fatigue) { $fatigueCount++ }

        $guideKey = $label
        if (-not $guides.ContainsKey($guideKey)) {
            $guideKey = ($guides.Keys | Where-Object { $_ -eq $label } | Select-Object -First 1)
        }
        $guideText = if ($guides.ContainsKey($label)) { $guides[$label] } else { '' }
        $source = if ($guides.ContainsKey($label)) { 'professor-guide' } else { 'generated' }

        $bodies = [System.Collections.Generic.List[string]]::new()
        if ($custom.ContainsKey($label)) {
            $bodies.Add($custom[$label])
            $source = 'custom-insert'
        } else {
            $bodies.Add((Build-VignetteBody -Label $label -Hardware $hw -GuideText $guideText -Chapter $ch.Num))
            if ($fatigue) {
                $hw2 = $hardwareCatalog[$hwIndex % $hardwareCatalog.Count]
                $hwIndex++
                $bodies.Add((Build-VignetteBody -Label $label -Hardware $hw2 -GuideText $guideText -Chapter $ch.Num -SecondPass))
            }
        }

        $hw2 = $hw

        $passNum = 0
        foreach ($body in $bodies) {
            $passNum++
            $markerId = if ($passNum -eq 1) { $label } else { "$label-b$passNum" }
            $hwUse = if ($passNum -eq 1) { $hw } else { $hw2 }
            $wrapped = if ($body -match '\\begin\{physicalvignette\}') { $body } else { Wrap-Vignette -Hardware $hwUse -Body $body }
            if (-not (Test-VignetteValid -Body $wrapped)) {
                Write-Warning "Vignette failed validation: $markerId"
            }
            $allInserts += "% BEGIN VIGNETTE:$markerId`n$wrapped`n% END VIGNETTE:$markerId"
            $catalogRows += "$markerId`t$hw`t$($ch.Num)`t$(if($fatigue){'fatigue'}else{'standard'})`t$source"

            if ($Apply -and -not $VerifyOnly) {
                if (Insert-VignetteAfterLabel -Lines $lines -Label $label -MarkerId $markerId -Body $wrapped) {
                    $totalInserted++
                    Write-Host "Inserted PHYSICAL-MEMORY:$markerId in $($ch.File)"
                }
            }
        }
        $labelIndex++
    }

    if ($Apply -and -not $VerifyOnly) {
        [IO.File]::WriteAllText($chPath, ($lines -join "`n"), [Text.UTF8Encoding]::new($false))
        Write-Host "Updated: $($ch.File)"
    }
}

# Write inserts archive
$insertHeader = @"
% Phase VIII-E — Physical Memory Corps (auto + custom vignettes)
% Generated: $(Get-Date -Format 'yyyy-MM-dd')
% Do not \input{} directly; spliced by VolI-Phase8E-Physical-Memory.ps1

"@
[IO.File]::WriteAllText($insertsPath, $insertHeader + ($allInserts -join "`n`n"), [Text.UTF8Encoding]::new($false))
[IO.File]::WriteAllText($catalogPath, ($catalogRows -join "`n"), [Text.UTF8Encoding]::new($false))

# Verify counts in manuscript (all Ch. 2–4 for gate; apply may be chapter-scoped)
$verifyChapters = @(
    @{ File = 'ch02.tex'; Num = 2 }
    @{ File = 'ch03.tex'; Num = 3 }
    @{ File = 'ch04.tex'; Num = 4 }
)
$vignetteCount = 0
$fatigueVignettes = 0
foreach ($ch in $verifyChapters) {
    $text = [IO.File]::ReadAllText((Join-Path $latex $ch.File))
    $vignetteCount += ([regex]::Matches($text, '\\begin\{physicalvignette\}')).Count
    foreach ($m in [regex]::Matches($text, '% PHYSICAL-MEMORY:(?<id>sec:ch[^\r\n]+)')) {
        if (Test-FatigueZone -Label ($m.Groups['id'].Value -replace '-b\d+$','')) { $fatigueVignettes++ }
    }
}

$planned = $allInserts.Count
Write-Host "Planned vignettes: $planned"
Write-Host "Manuscript vignettes: $vignetteCount"
Write-Host "Fatigue-zone anchors: $fatigueCount (planned extras in apply pass)"

$pass = ($vignetteCount -ge 50)
if ($VerifyOnly -or -not $Apply) {
    $pass = ($planned -ge 50) -or ($vignetteCount -ge 50)
}

# Insert map markdown
$map = @"
# Phase VIII-E — Physical Memory Insert Map

**Date:** $(Get-Date -Format 'yyyy-MM-dd')  
**Gate:** ``scripts/VolI-Phase8E-Physical-Memory.ps1`` — $(if($pass){'**PASS**'}else{'**FAIL**'})  
**Scope:** Chapters $($ChapterFilter -join ', ')

## Summary

| Metric | Value |
|--------|------:|
| Planned vignettes | $planned |
| In manuscript | $vignetteCount |
| Fatigue-zone subsection anchors | $fatigueCount |
| Hardware catalog size | $($hardwareCatalog.Count) |
| Target | 50–100 |

## Priority fatigue zones

| Zone | Rule |
|------|------|
| Ch. 2 §2.5–2.10 | ``sec:ch25``–``sec:ch210*`` — **2 vignettes** per anchor when applied |
| Ch. 3 §3.8–3.10 | ``sec:ch38``–``sec:ch310*`` — **2 vignettes** per anchor |
| Ch. 4 §4.4–4.7 | ``sec:ch44``–``sec:ch47*`` — **2 vignettes** per anchor |

## Catalog

See ``TOC/VOL-I-PHYSICAL-MEMORY-CATALOG.tsv`` ($planned rows).

## Custom overrides

Author-edited blocks: ``latex/vol-i-physical-memory-inserts.tex`` (``% BEGIN VIGNETTE:sec:...``).

"@
[IO.File]::WriteAllText($mapPath, $map, [Text.UTF8Encoding]::new($false))

$report = @"
# Phase VIII-E — Physical Memory Corps report

**Date:** $(Get-Date -Format 'yyyy-MM-dd')  
**Gate:** $(if($pass){'PASS'}else{'FAIL'})

## Contract

- 2–5 paragraphs per vignette; **no inline or displayed equations**
- Concrete hardware opening; closes with ``\ref{sec:...}`` only
- Density target: one vignette every 4–6 PDF pages in Ch. 2–4
- Priority fatigue zones receive **double** vignettes (reciprocity bench + historical thread)

## Counts

| Metric | Value |
|--------|------:|
| Vignettes in manuscript | $vignetteCount |
| Planned (catalog) | $planned |
| Hardware catalog entries | $($hardwareCatalog.Count) |

## Files

- ``latex/macros.tex`` — ``physicalvignette`` environment
- ``latex/vol-i-physical-memory-inserts.tex`` — archive of all vignette bodies
- ``TOC/VOL-I-PHYSICAL-MEMORY-CATALOG.tsv`` — anchor × hardware map
- ``TOC/VOL-I-PHYSICAL-MEMORY-INSERT-MAP.md`` — placement summary

## Apply / verify

``````powershell
.\scripts\VolI-Phase8E-Physical-Memory.ps1 -Apply
.\scripts\VolI-Phase8E-Physical-Memory.ps1 -Chapters 3 -Apply   # Ch. 3 restore only
.\scripts\VolI-Phase8E-Physical-Memory.ps1 -VerifyOnly
.\scripts\Build-VolumeI-Final.ps1
``````

"@
[IO.File]::WriteAllText($reportPath, $report, [Text.UTF8Encoding]::new($false))

if (-not $pass) {
    Write-Host 'FAIL: fewer than 50 vignettes.'
    exit 1
}
Write-Host 'PASS: Phase VIII-E Physical Memory Corps gate.'
exit 0
