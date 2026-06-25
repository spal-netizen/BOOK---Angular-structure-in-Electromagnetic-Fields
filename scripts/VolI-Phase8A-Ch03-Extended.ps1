# Phase VIII-A — Ch. 3 extended zero-tolerance lexicon (Tier A/B/C)
param(
    [string]$Root = (Join-Path $PSScriptRoot '..'),
    [switch]$Apply,
    [switch]$VerifyOnly
)
Set-StrictMode -Version Latest
$ErrorActionPreference = 'Stop'
$root = Resolve-Path $Root
$ch03 = Join-Path $root 'latex\ch03.tex'
$report = Join-Path $root 'TOC/VOL-I-PHASE8A-CH03-VOICE-REPORT.md'

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

# Tier C lab diction + Ch. 3 certificate/pipeline/scaffold rehabilitation (longest first)
$ch03Replacements = @(
    @{ Old = '\subsection{Forward pointer to Chapter'; New = '\subsection{Continuity to Chapter' }
    @{ Old = 'Hilbert-Space Framework for Radiative Fields'; New = 'Hilbert-Space Setting for Radiative Fields' }
    @{ Old = 'Chapter~\ref{ch:03} export certificate (closing statement)'; New = 'Chapter~\ref{ch:03} export closure (closing statement)' }
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
    @{ Old = 'Filter chain & Eq'; New = 'Filter chain & Eq' }
    @{ Old = 'laboratory pipeline'; New = 'laboratory measurement sequence' }
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
    @{ Old = 'on that closed' + "`n" + 'framework'; New = 'on that closed setting' }
    @{ Old = '\emph{label orthogonality} certificate'; New = '\emph{label orthogonality} closure' }
    @{ Old = '\paragraph{Forward pointer to Chapter'; New = '\paragraph{Continuity to Chapter' }
    @{ Old = '\paragraph{Forward pointer without proof'; New = '\paragraph{Continuity without proof' }
    @{ Old = 'execute the Subsection~\ref{sec:ch362} audit:'; New = 'execute the Subsection~\ref{sec:ch362} consistency check:' }
    @{ Old = 'Truncation audits are'; New = 'Truncation checks are' }
    @{ Old = 'Audit using Eq'; New = 'Check using Eq' }
    @{ Old = 'plate. Audit with'; New = 'plate. Check with' }
    @{ Old = 'without matrix. Audit'; New = 'without matrix. Check' }
    @{ Old = 'Step & Deliverable &'; New = 'Step & Report item &' }
    @{ Old = 'sec:ch384} deliverables'; New = 'sec:ch384} report fields' }
    @{ Old = 'attached \(\mathbf{T}\) metadata'; New = 'attached \(\mathbf{T}\) report fields' }
    @{ Old = 'gauge class metadata'; New = 'gauge class record' }
    @{ Old = 'symmetric stress framework'; New = 'symmetric stress-tensor construction' }
    @{ Old = 'completeness rate} certificate'; New = 'completeness rate} criterion' }
    @{ Old = 'as auditable templates'; New = 'as reproducible templates' }
    @{ Old = 'auditable instances'; New = 'reproducible instances' }
    @{ Old = 'citations are auditable'; New = 'citations are traceable' }
    @{ Old = 'mixing taxonomy'; New = 'mixing classification' }
    @{ Old = 'supply \emph{taxonomy} only'; New = 'supply \emph{classification} only' }
    @{ Old = 'orders that audit'; New = 'orders that check' }
    @{ Old = 'coordinated audit'; New = 'coordinated check' }
    @{ Old = 'such audits as'; New = 'such checks as' }
    @{ Old = 'relative phase metadata'; New = 'relative phase record' }
    @{ Old = 'framework.'; New = 'setting.' }
    @{ Old = 'framework,'; New = 'setting,' }
    @{ Old = 'framework '; New = 'setting ' }
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

if (-not (Test-Path $ch03)) { throw "Missing $ch03" }

$c = [IO.File]::ReadAllText($ch03)
$raw = $c
if ($Apply -and -not $VerifyOnly) {
  foreach ($pair in $ch03Replacements) {
    $ic = $false
    if ($pair.ContainsKey('IgnoreCase')) { $ic = [bool]$pair.IgnoreCase }
    $c = Invoke-ProseReplace -Text $c -Old $pair.Old -New $pair.New -IgnoreCase:$ic
  }
  $c = [regex]::Replace($c, '\.  +', '. ')
  $c = [regex]::Replace($c, '\n\n\n+', "`n`n")
  if ($c -ne $raw) {
    [IO.File]::WriteAllText($ch03, $c, [Text.UTF8Encoding]::new($false))
    Write-Host 'Updated: ch03.tex'
  }
}

$fail = @()
$lines = [IO.File]::ReadAllLines($ch03)
for ($i = 0; $i -lt $lines.Count; $i++) {
  $line = $lines[$i]
  if ($line -match '^\s*%') { continue }
  $prose = Get-ProseOnly -Line $line
  foreach ($p in $tierA) {
    if ($prose -match $p) { $fail += "ch03.tex:$($i+1): $p" }
  }
  if ($prose -match $tierAProseCertif) { $fail += "ch03.tex:$($i+1): certif*" }
}

$labelCertif = ([regex]::Matches([IO.File]::ReadAllText($ch03), '\\label\{[^}]*certif[^}]*\}')).Count

$pass = ($fail.Count -eq 0)
$reportMd = @"
# Phase VIII-A — Ch. 3 extended zero-tolerance voice report

**Date:** $(Get-Date -Format 'yyyy-MM-dd')  
**Gate:** $(if($pass){'**PASS**'}else{'**FAIL**'})  
**File:** ``latex/ch03.tex``

| Tier | Policy | Result |
|------|--------|--------|
| A | Governance/software/AI/corporate ban in prose | $(if($pass){'0 hits'}else{"$($fail.Count) hits"}) |
| B | ``\label{...certif...}`` preserved | $labelCertif labels kept |
| C | Lab diction (range report, rank-N readout, excitation-to-flux sequence) | applied |

$(if ($fail.Count -gt 0) { "## Remaining hits`n`n" + ($fail | Select-Object -First 80 | ForEach-Object { "- $_" } | Out-String) })

## Script

``scripts/VolI-Phase8A-Ch03-Extended.ps1`` (`-Apply` / `-VerifyOnly`)

"@
[IO.File]::WriteAllText($report, $reportMd, [Text.UTF8Encoding]::new($false))

if (-not $pass) {
  Write-Host "FAIL: $($fail.Count) Tier-A hits in ch03.tex"
  $fail | Select-Object -First 40 | ForEach-Object { Write-Host "  $_" }
  exit 1
}
Write-Host 'PASS: Phase VIII-A Ch. 3 extended zero-tolerance voice gate.'
exit 0
