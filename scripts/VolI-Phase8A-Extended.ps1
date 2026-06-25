# Phase VIII-A — extended zero-tolerance lexicon (Ch. 1–4, Tier A/B/C)
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

$chapterFiles = @{
    1 = 'ch01.tex'
    2 = 'ch02.tex'
    3 = 'ch03.tex'
    4 = 'ch04.tex'
}

function Invoke-ProseReplace {
    param([string]$Text, [string]$Old, [string]$New, [switch]$IgnoreCase)
    if ([string]::IsNullOrEmpty($Old)) { return $Text }
    $parts = [regex]::Split($Text, '(\\(?:label|ref|eqref|cite)\{[^}]*\})')
    for ($i = 0; $i -lt $parts.Count; $i++) {
        if ($parts[$i] -match '^\\(?:label|ref|eqref|cite)\{') { continue }
        if ($IgnoreCase) {
            $parts[$i] = [regex]::Replace($parts[$i], [regex]::Escape($Old), $New, 'IgnoreCase')
        } else {
            $parts[$i] = $parts[$i].Replace($Old, $New)
        }
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

# Base + extended replacements (longest phrases first; Tier C lab diction)
$replacements = @(
    @{ Old = '\subsection{Forward pointer}'; New = '\subsection{Continuity}' }
    @{ Old = 'Hilbert-Space Framework for Radiative Fields'; New = 'Hilbert-Space Setting for Radiative Fields' }
    @{ Old = 'Software interchange contract'; New = 'Post-processing interchange contract' }
    @{ Old = 'finite-support realizability certificate'; New = 'finite-support realizability bound' }
    @{ Old = 'simultaneous-diagonalization scaffold'; New = 'simultaneous-diagonalization diagram' }
    @{ Old = 'magnetic-dipole scaffold at'; New = 'magnetic-dipole template at' }
    @{ Old = 'axisymmetric dipole scaffold'; New = 'axisymmetric dipole template' }
    @{ Old = 'isotropic scaffold'; New = 'isotropic template' }
    @{ Old = 'dipole scaffold'; New = 'dipole template' }
    @{ Old = 'outgoing scaffold'; New = 'outgoing far-zone template' }
    @{ Old = 'Shell inner product scaffold'; New = 'Shell inner product setup' }
    @{ Old = 'Debye-to-eigenfield pipeline'; New = 'Debye-to-eigenfield sequence' }
    @{ Old = 'coefficient extraction pipeline'; New = 'coefficient extraction sequence' }
    @{ Old = 'construction pipeline'; New = 'construction sequence' }
    @{ Old = 'composition pipeline'; New = 'composition sequence' }
    @{ Old = 'reporting pipeline'; New = 'reporting sequence' }
    @{ Old = 'Export pipeline closure'; New = 'Export sequence closure' }
    @{ Old = 'separation pipeline'; New = 'separation sequence' }
    @{ Old = 'laboratory pipeline'; New = 'laboratory measurement sequence' }
    @{ Old = 'software pipelines'; New = 'post-processing sequences' }
    @{ Old = 'in software pipelines'; New = 'in post-processing sequences' }
    @{ Old = 'A reported pipeline'; New = 'A reported excitation-to-flux sequence' }
    @{ Old = 'feed pipelines'; New = 'feed sequences' }
    @{ Old = 'through the pipeline Eq'; New = 'through the excitation-to-flux sequence Eq' }
    @{ Old = 'Quantization workflow (laboratory)'; New = 'Quantization measurement sequence (laboratory)' }
    @{ Old = 'ordered workflow'; New = 'ordered measurement sequence' }
    @{ Old = 'Laboratory workflows'; New = 'Laboratory measurement sequences' }
    @{ Old = 'is the workflow against'; New = 'is the measurement sequence against' }
    @{ Old = 'commutation framework'; New = 'commutation algebra' }
    @{ Old = 'the Hilbert framework'; New = 'the Hilbert-space setting' }
    @{ Old = 'Hilbert framework'; New = 'Hilbert-space setting' }
    @{ Old = 'framework now asks'; New = 'setting now asks' }
    @{ Old = 'framework \cite'; New = 'setting \cite' }
    @{ Old = 'Ch.~1\\certificates\\'; New = 'Ch.~1\\admissibility\\' }
    @{ Old = 'admissibility certificates'; New = 'admissibility range reports' }
    @{ Old = 'operator-level certificates'; New = 'operator-level closure conditions' }
    @{ Old = 'operator certificates'; New = 'operator closure conditions' }
    @{ Old = 'commutation certificates'; New = 'commutation checks' }
    @{ Old = 'separation certificates'; New = 'separation closure conditions' }
    @{ Old = 'orthogonality certificates'; New = 'orthogonality closure conditions' }
    @{ Old = 'transverse certificates'; New = 'transverse closure conditions' }
    @{ Old = 'conservation certificates'; New = 'conservation checks' }
    @{ Old = 'representation certificates'; New = 'representation closure conditions' }
    @{ Old = 'symmetry certificates'; New = 'symmetry closure conditions' }
    @{ Old = 'boundary continuation certificates'; New = 'boundary continuation qualifications' }
    @{ Old = 'approximation certificates'; New = 'approximation bounds' }
    @{ Old = 'validity certificate'; New = 'validity bound' }
    @{ Old = 'existence certificate'; New = 'existence closure' }
    @{ Old = 'completeness rate certificate'; New = 'completeness rate criterion' }
    @{ Old = 'completeness certificate'; New = 'completeness closure' }
    @{ Old = 'acceptance certificate'; New = 'acceptance criterion' }
    @{ Old = 'gauge certificate'; New = 'gauge declaration' }
    @{ Old = 'outgoing certificates'; New = 'outgoing qualifications' }
    @{ Old = 'outgoing certificate'; New = 'outgoing qualification' }
    @{ Old = 'boundary certificate'; New = 'boundary qualification' }
    @{ Old = 'surrogate certificate'; New = 'surrogate qualification' }
    @{ Old = 'scalar certificates'; New = 'scalar closure checks' }
    @{ Old = 'Poynting transport certificate'; New = 'Poynting transport closure' }
    @{ Old = 'Far-zone asymptotics and flux certificate'; New = 'Far-zone asymptotics and flux closure' }
    @{ Old = 'label orthogonality certificate'; New = 'label orthogonality closure' }
    @{ Old = 'infinite basis certificate'; New = 'infinite-basis closure' }
    @{ Old = 'wave-equation certificate'; New = 'wave-equation closure' }
    @{ Old = 'Maxwell certificate'; New = 'Maxwell closure condition' }
    @{ Old = 'transverse certificate'; New = 'transverse closure condition' }
    @{ Old = 'asymptotic certificate'; New = 'asymptotic closure' }
    @{ Old = 'flux certificate'; New = 'flux closure' }
    @{ Old = 'eigenvalue certificate'; New = 'eigenvalue identification' }
    @{ Old = 'operator certificate'; New = 'operator closure condition' }
    @{ Old = 'export certificate'; New = 'export closure statement' }
    @{ Old = 'domain certificate'; New = 'domain closure statement' }
    @{ Old = 'certificate layer'; New = 'closure layer' }
    @{ Old = 'certificate behind'; New = 'closure behind' }
    @{ Old = 'certificate that'; New = 'closure that' }
    @{ Old = 'certificate means'; New = 'closure means' }
    @{ Old = 'certificate is'; New = 'closure is' }
    @{ Old = 'certificate on'; New = 'closure on' }
    @{ Old = 'certificate for'; New = 'closure for' }
    @{ Old = 'certificates imported'; New = 'closure conditions imported' }
    @{ Old = 'certificates:'; New = 'closure conditions:' }
    @{ Old = 'certificates;'; New = 'closure conditions;' }
    @{ Old = 'certificates,'; New = 'closure conditions,' }
    @{ Old = 'certificates.'; New = 'closure conditions.' }
    @{ Old = 'certificates '; New = 'closure conditions ' }
    @{ Old = 'certificate.'; New = 'closure condition.' }
    @{ Old = 'certificate,'; New = 'closure condition,' }
    @{ Old = 'certificate '; New = 'closure condition ' }
    @{ Old = 'Label source & Index & Certificate'; New = 'Label source & Index & Closure test' }
    @{ Old = 'Label & Domain & Certificate'; New = 'Label & Domain & Closure test' }
    @{ Old = 'symmetry-breaking taxonomy'; New = 'symmetry-breaking classification' }
    @{ Old = 'truncation loss taxonomy'; New = 'truncation loss classification' }
    @{ Old = 'quantization taxonomy'; New = 'quantization classification' }
    @{ Old = 'label taxonomy'; New = 'label classification' }
    @{ Old = 'links the taxonomy'; New = 'links the classification' }
    @{ Old = 'the taxonomy to'; New = 'the classification to' }
    @{ Old = 'taxonomy \cite'; New = 'classification \cite' }
    @{ Old = 'taxonomy that'; New = 'classification that' }
    @{ Old = 'near-field software'; New = 'near-field inversion code' }
    @{ Old = 'software implementations'; New = 'post-processing implementations' }
    @{ Old = 'across software'; New = 'across post-processing libraries' }
    @{ Old = 'Transpose mismatch vs.\ simulation'; New = 'Transpose mismatch vs.\ numerical model' }
    @{ Old = 'Peer-review metadata for'; New = 'Peer-review record for' }
    @{ Old = 'Archive metadata for'; New = 'Archive record for' }
    @{ Old = 'campaign metadata'; New = 'campaign record' }
    @{ Old = 'truncation metadata'; New = 'truncation record' }
    @{ Old = 'quantization metadata'; New = 'quantization record' }
    @{ Old = 'normalization metadata'; New = 'normalization record' }
    @{ Old = 'Gouy metadata'; New = 'Gouy phase record' }
    @{ Old = 'helicity metadata'; New = 'helicity record' }
    @{ Old = 'geometry metadata'; New = 'geometry record' }
    @{ Old = 'reporting metadata'; New = 'reporting record' }
    @{ Old = 'Metadata field'; New = 'Report field' }
    @{ Old = 'as metadata'; New = 'as report fields' }
    @{ Old = 'in metadata'; New = 'in the report record' }
    @{ Old = 'without \(\mathcal{N}\) metadata'; New = 'without \(\mathcal{N}\) report fields' }
    @{ Old = 'without that metadata'; New = 'without those report fields' }
    @{ Old = 'optional metadata'; New = 'optional report fields' }
    @{ Old = '\(\mathcal{N}\) metadata'; New = '\(\mathcal{N}\) report fields' }
    @{ Old = 'metadata \cite'; New = 'report fields \cite' }
    @{ Old = 'metadata,'; New = 'report fields,' }
    @{ Old = 'metadata.'; New = 'report fields.' }
    @{ Old = 'metadata '; New = 'report fields ' }
    @{ Old = 'Condition-number audit'; New = 'Condition-number screen' }
    @{ Old = 'Remainder orthogonality audit'; New = 'Remainder orthogonality check' }
    @{ Old = 'Radial decay audit'; New = 'Radial decay check' }
    @{ Old = 'normalization audit'; New = 'normalization check' }
    @{ Old = 'dimension audit'; New = 'dimensional check' }
    @{ Old = 'truncation audit'; New = 'truncation check' }
    @{ Old = 'reciprocity audit'; New = 'reciprocity check' }
    @{ Old = 'phase-topology audit'; New = 'phase-topology check' }
    @{ Old = 'marketing audit'; New = 'marketing check' }
    @{ Old = 'non-integer claim audit'; New = 'non-integer claim check' }
    @{ Old = 'transmit/receive audit'; New = 'transmit/receive check' }
    @{ Old = 'factor audit'; New = 'factor check' }
    @{ Old = 'audit checklist'; New = 'consistency checklist' }
    @{ Old = 'audit steps'; New = 'consistency checks' }
    @{ Old = 'audit worksheet'; New = 'consistency worksheet' }
    @{ Old = 'audit a published'; New = 'check a published' }
    @{ Old = 'audit ``pure'; New = 'check ``pure' }
    @{ Old = 'audit lateral'; New = 'check lateral' }
    @{ Old = 'audit \(d\mu\)'; New = 'check \(d\mu\)' }
    @{ Old = 'If mismatch, audit'; New = 'If mismatch, check' }
    @{ Old = 'Problem (audit'; New = 'Problem (check' }
    @{ Old = 'Problem (three-port audit)'; New = 'Problem (three-port consistency check)' }
    @{ Old = 'Algorithmic order versus physics'; New = 'Fit-order versus physics' }
    @{ Old = 'algorithmic truncation order'; New = 'fit-order truncation' }
    @{ Old = 'algorithmic stopping'; New = 'numerical stopping' }
    @{ Old = 'algorithmic truncation'; New = 'fit-order truncation' }
    @{ Old = 'are algorithmic'; New = 'are numerical fit-order' }
    @{ Old = 'Fit orders are algorithmic'; New = 'Fit orders are numerical fit-order' }
    @{ Old = 'An optimizer reports'; New = 'A fit routine reports' }
    @{ Old = 'when the optimizer'; New = 'when the fit routine' }
    @{ Old = 'harmonic optimizer'; New = 'harmonic fit routine' }
    @{ Old = 'compose horn-to-far pipeline'; New = 'compose horn-to-far sequence' }
    @{ Old = 'uses composition to pipeline'; New = 'uses composition to chain' }
    @{ Old = 'pipelines that apply'; New = 'sequences that apply' }
    @{ Old = 'pipeline horn'; New = 'sequence horn' }
    @{ Old = 'pipeline:'; New = 'sequence:' }
    @{ Old = 'pipeline,'; New = 'sequence,' }
    @{ Old = 'pipeline.'; New = 'sequence.' }
    @{ Old = 'pipeline '; New = 'sequence ' }
    @{ Old = 'workflow:'; New = 'measurement sequence:' }
    @{ Old = 'workflow,'; New = 'measurement sequence,' }
    @{ Old = 'workflow.'; New = 'measurement sequence.' }
    @{ Old = 'workflow '; New = 'measurement sequence ' }
    @{ Old = 'scaffold).'; New = 'template).' }
    @{ Old = 'scaffold,'; New = 'template,' }
    @{ Old = 'scaffold.'; New = 'template.' }
    @{ Old = 'scaffold '; New = 'template ' }
    @{ Old = 'taxonomy.'; New = 'classification.' }
    @{ Old = 'taxonomy,'; New = 'classification,' }
    @{ Old = 'taxonomy '; New = 'classification ' }
    @{ Old = 'audit.'; New = 'check.' }
    @{ Old = 'audit,'; New = 'check,' }
    @{ Old = 'audit '; New = 'check ' }
    @{ Old = 'audit)'; New = 'check)' }
    @{ Old = 'software '; New = 'post-processing ' }
    @{ Old = 'simulation '; New = 'numerical model ' }
    @{ Old = 'optimizer '; New = 'fit routine ' }
    @{ Old = 'formalize'; New = 'state' }
    @{ Old = 'leverage'; New = 'use' }
    @{ Old = 'utilize'; New = 'use' }
    @{ Old = 'symmetric stress framework'; New = 'symmetric stress-tensor construction' }
    @{ Old = 'mixing taxonomy'; New = 'mixing classification' }
    @{ Old = 'supply \emph{taxonomy} only'; New = 'supply \emph{classification} only' }
    @{ Old = 'orders that audit'; New = 'orders that check' }
    @{ Old = 'coordinated audit'; New = 'coordinated check' }
    @{ Old = 'such audits as'; New = 'such checks as' }
    @{ Old = 'relative phase metadata'; New = 'relative phase record' }
    @{ Old = 'framework.'; New = 'setting.' }
    @{ Old = 'framework,'; New = 'setting,' }
    @{ Old = 'framework '; New = 'setting ' }
    @{ Old = 'Forward pointer. '; New = '' }
    @{ Old = 'Forward pointer.'; New = '' }
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
    @{ Old = 'Three-level hierarchy'; New = 'Three-level nesting' }
    @{ Old = 'three-level hierarchy'; New = 'three-level nesting' }
    @{ Old = 'hierarchy of'; New = 'nesting of' }
    @{ Old = 'the hierarchy'; New = 'the nesting' }
    @{ Old = 'this hierarchy'; New = 'this nesting' }
    @{ Old = 'The hierarchy'; New = 'The nesting' }
    @{ Old = 'hierarchy,'; New = 'nesting,' }
    @{ Old = 'hierarchy.'; New = 'nesting.' }
    @{ Old = 'hierarchy '; New = 'nesting ' }
    @{ Old = 'Progressive spaces (reference chain)'; New = 'Nested admissible classes' }
    @{ Old = 'progressive field classes'; New = 'nested admissible classes' }
    @{ Old = 'resolve and certify what was exported'; New = 'recover within declared tolerance what was exported' }
    @{ Old = 'produced, transported, and certified'; New = 'produced, transported, and reported on $\Gamma_R$' }
    @{ Old = 'export machinery'; New = 'export maps' }
    @{ Old = 'mathematical architecture'; New = 'mathematical structure' }
    @{ Old = 'spectral architecture'; New = 'spectral methods' }
    @{ Old = 'long simulation input list'; New = 'long harmonic fit input list' }
    @{ Old = 'modal index in software'; New = 'modal index in post-processing' }
    @{ Old = 'source-to-radiation-to-measurement chain'; New = 'source-to-radiation-to-measurement sequence' }
    @{ Old = 'source-to-field-to-radiation chain'; New = 'source-to-field-to-radiation sequence' }
    @{ Old = 'the reader'; New = 'the experimenter'; IgnoreCase = $true }
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

$targets = if ($Chapter -gt 0) { @($Chapter) } else { @(1, 2, 3, 4) }
$allFail = @()

foreach ($num in $targets) {
    $file = $chapterFiles[$num]
    $path = Join-Path $latex $file
    if (-not (Test-Path $path)) { throw "Missing $path" }

    $c = [IO.File]::ReadAllText($path)
    $raw = $c
    $changeCount = 0

    if ($Apply -and -not $VerifyOnly) {
        foreach ($pair in $replacements) {
            $ic = $false
            if ($pair.ContainsKey('IgnoreCase')) { $ic = [bool]$pair.IgnoreCase }
            $before = $c
            $c = Invoke-ProseReplace -Text $c -Old $pair.Old -New $pair.New -IgnoreCase:$ic
            if ($c -ne $before) { $changeCount++ }
        }
        $c = [regex]::Replace($c, '\.  +', '. ')
        $c = [regex]::Replace($c, '\n\n\n+', "`n`n")
        if ($c -ne $raw) {
            [IO.File]::WriteAllText($path, $c, [Text.UTF8Encoding]::new($false))
            Write-Host "Updated: $file ($changeCount replacement rules matched)"
        } else {
            Write-Host "No change: $file"
        }
    }

    $fail = @()
    $lines = [IO.File]::ReadAllLines($path)
    for ($i = 0; $i -lt $lines.Count; $i++) {
        $line = $lines[$i]
        if ($line -match '^\s*%') { continue }
        $prose = Get-ProseOnly -Line $line
        foreach ($p in $tierA) {
            if ($prose -match $p) { $fail += "$file`:$($i+1): $p" }
        }
        if ($prose -match $tierAProseCertif) { $fail += "$file`:$($i+1): certif*" }
    }

    $labelCertif = ([regex]::Matches([IO.File]::ReadAllText($path), '\\label\{[^}]*certif[^}]*\}')).Count
    $pass = ($fail.Count -eq 0)
    $allFail += $fail

    $reportPath = Join-Path $toc ("VOL-I-PHASE8A-CH0{0}-VOICE-REPORT.md" -f $num)
    $reportMd = @(
        "# Phase VIII-A - Extended zero-tolerance voice (Chapter $num)",
        "",
        "**Date:** $(Get-Date -Format 'yyyy-MM-dd')",
        "**Gate:** $(if ($pass) { '**PASS**' } else { '**FAIL**' })",
        "**File:** ``latex/$file``",
        "",
        "| Tier | Policy | Result |",
        "|------|--------|--------|",
        "| A | Governance/software/AI/corporate ban in prose | $(if ($pass) { '0 hits' } else { "$($fail.Count) hits" }) |",
        "| B | ``\label{...certif...}`` preserved (cite via ``\ref``/``\eqref`` only) | $labelCertif labels kept |",
        "| C | Lab diction (range report, rank-N readout, excitation-to-flux sequence) | applied |",
        "",
        "## Script",
        "",
        "``scripts/VolI-Phase8A-Extended.ps1 -Chapter $num`` (`-Apply` / `-VerifyOnly`)",
        ""
    )
    if ($fail.Count -gt 0) {
        $reportMd += "## Remaining hits"
        $reportMd += ""
        $reportMd += ($fail | Select-Object -First 80 | ForEach-Object { "- $_" })
    } else {
        $reportMd += "## Remaining hits"
        $reportMd += ""
        $reportMd += "- none"
    }
    [IO.File]::WriteAllText($reportPath, ($reportMd -join "`n"), [Text.UTF8Encoding]::new($false))
    Write-Host "Report: $reportPath ($(if ($pass) { 'PASS' } else { 'FAIL' }))"
}

if ($allFail.Count -gt 0) {
    Write-Host "FAIL: $($allFail.Count) Tier-A hits remain:"
    $allFail | Select-Object -First 50 | ForEach-Object { Write-Host "  $_" }
    exit 1
}
Write-Host 'PASS: Phase VIII-A extended zero-tolerance voice gate (Ch. 1-4).'
exit 0
