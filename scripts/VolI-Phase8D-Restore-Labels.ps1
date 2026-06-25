# Restore \label{} / \ref{} / \eqref{} stems corrupted by doctrine word thinning
param([string]$Root = (Join-Path $PSScriptRoot '..'))
Set-StrictMode -Version Latest
$ErrorActionPreference = 'Stop'
$latex = Join-Path (Resolve-Path $Root) 'latex'

# Order: longer / more specific first
$restores = @(
    # accessibility thinning corrupted label stems (rank-$N$ recovery / probe rank)
    @{ Old = 'eq:ch2.far-angular-rank-$N$ recovery-def'; New = 'eq:ch2.far-angular-accessibility-def' }
    @{ Old = 'eq:ch2.far-angular-probe rank-def'; New = 'eq:ch2.far-angular-accessibility-def' }
    @{ Old = 'eq:ch2.far-angular-rank-$N$ recovery'; New = 'eq:ch2.far-angular-accessibility-preview' }
    @{ Old = 'eq:ch2.far-angular-probe rank'; New = 'eq:ch2.far-angular-accessibility-preview' }
    @{ Old = 'eq:ch2.angular-rank-$N$ recovery-sector'; New = 'eq:ch2.angular-accessibility-sector' }
    @{ Old = 'eq:ch2.angular-probe rank-sector'; New = 'eq:ch2.angular-accessibility-sector' }
    @{ Old = 'eq:ch2.angular-rank-$N$ recovery-operator'; New = 'eq:ch2.angular-accessibility-operator' }
    @{ Old = 'eq:ch2.angular-probe rank-operator'; New = 'eq:ch2.angular-accessibility-operator' }
    @{ Old = 'eq:ch2.plane-wave-rank-$N$ recovery-filter'; New = 'eq:ch2.plane-wave-accessibility-filter' }
    @{ Old = 'eq:ch2.plane-wave-probe rank-filter'; New = 'eq:ch2.plane-wave-accessibility-filter' }
    @{ Old = 'fig:ch2.far-angular-rank-$N$ recovery-measurement chain'; New = 'fig:ch2.far-angular-accessibility-pipeline' }
    @{ Old = 'eq:ch3.J-rank-$N$ recovery-composition'; New = 'eq:ch3.J-accessibility-composition' }
    @{ Old = 'eq:ch3.J-probe rank-composition'; New = 'eq:ch3.J-accessibility-composition' }
    @{ Old = 'def:ch4.probe rank-envelope'; New = 'def:ch4.accessibility-envelope' }
    @{ Old = 'eq:ch4.rank-$N$ recovery-envelope'; New = 'eq:ch4.accessibility-envelope' }
    @{ Old = 'eq:ch4.probe rank-envelope'; New = 'eq:ch4.accessibility-envelope' }
    @{ Old = 'fig:ch4.synthesis-rank-$N$ recovery-sets'; New = 'fig:ch4.synthesis-accessibility-sets' }
    @{ Old = 'fig:ch4.synthesis-probe rank-sets'; New = 'fig:ch4.synthesis-accessibility-sets' }
    @{ Old = 'eq:ch4.reactive-rank-$N$ recovery'; New = 'eq:ch4.reactive-accessibility' }
    @{ Old = 'fig:ch4.reactive-probe rank-split'; New = 'fig:ch4.reactive-accessibility-split' }
    @{ Old = 'prop:ch4.multiscale-synthesizable'; New = 'prop:ch4.multiscale-realizability' }
    @{ Old = 'prop:ch4.distributional-synthesizable'; New = 'prop:ch4.distributional-realizability' }
    @{ Old = 'prop:ch4.tangential-synthesizable-condition'; New = 'prop:ch4.tangential-realizability-condition' }
    @{ Old = 'eq:ch4.propagating-synthesizable'; New = 'eq:ch4.propagating-realizable' }
    @{ Old = 'eq:ch2.plane-wave-$\mathcal{E}_{\mathrm{acc}}^{(N)}$-filter'; New = 'eq:ch2.plane-wave-accessibility-filter' }
    @{ Old = 'eq:ch2.angular-$\mathcal{E}_{\mathrm{acc}}^{(N)}$-operator'; New = 'eq:ch2.angular-accessibility-operator' }
    @{ Old = 'eq:ch2.angular-$\mathcal{E}_{\mathrm{acc}}^{(N)}$-sector'; New = 'eq:ch2.angular-accessibility-sector' }
    @{ Old = 'eq:ch2.far-angular-$\mathcal{E}_{\mathrm{acc}}^{(N)}$-def'; New = 'eq:ch2.far-angular-accessibility-def' }
    @{ Old = 'eq:ch2.far-angular-$\mathcal{E}_{\mathrm{acc}}^{(N)}$'; New = 'eq:ch2.far-angular-accessibility-def' }
    @{ Old = 'eq:ch2.nr-current-$\mathcal{D}_J=1$-law'; New = 'eq:ch2.nr-current-admissibility-law' }
    @{ Old = 'eq:ch2.nr-current-Maxwell-closed-law'; New = 'eq:ch2.nr-current-admissibility-law' }
    @{ Old = 'eq:ch2.graph-$\mathcal{D}_J=1$-criterion'; New = 'eq:ch2.graph-admissibility-criterion' }
    @{ Old = 'eq:ch2.closure-Maxwell-closed-lock'; New = 'eq:ch2.closure-admissibility-lock' }
    @{ Old = 'eq:ch1.continuity-$\mathcal{D}_J=1$'; New = 'eq:ch1.continuity-admissibility' }
    @{ Old = 'eq:ch1.continuity-Maxwell-closed'; New = 'eq:ch1.continuity-admissibility' }
    @{ Old = 'eq:ch1.transport-$\mathcal{D}_J=1$-index'; New = 'eq:ch1.transport-admissibility-index' }
    @{ Old = 'eq:ch1.transport-Maxwell-closed-index'; New = 'eq:ch1.transport-admissibility-index' }
    @{ Old = 'eq:ch1.stress-measurement-$\mathcal{D}_J=1$'; New = 'eq:ch1.stress-measurement-admissibility' }
    @{ Old = 'eq:ch1.observable-$\mathcal{D}_J=1$-triad'; New = 'eq:ch1.observable-admissibility-triad' }
    @{ Old = 'eq:ch1.ex61-$\mathcal{D}_J=1$-criterion'; New = 'eq:ch1.ex61-admissibility-criterion' }
    @{ Old = 'eq:ch1.ex61-Maxwell-closed-criterion'; New = 'eq:ch1.ex61-admissibility-criterion' }
    @{ Old = 'eq:ch1.ex62-$\mathcal{D}_J=1$-criterion'; New = 'eq:ch1.ex62-admissibility-gate' }
    @{ Old = 'eq:ch1.ex62-Maxwell-closed-criterion'; New = 'eq:ch1.ex62-admissibility-gate' }
    @{ Old = 'eq:ch1.ex64-regime-Maxwell-closed'; New = 'eq:ch1.ex64-regime-admissibility' }
    @{ Old = 'eq:ch1.ex64-regime-charge-continuous'; New = 'eq:ch1.ex64-regime-admissibility' }
    @{ Old = 'eq:ch1.source-$\mathcal{D}_J=1$'; New = 'eq:ch1.source-admissibility' }
    @{ Old = 'eq:ch1.source-Maxwell-closed'; New = 'eq:ch1.source-admissibility' }
    @{ Old = 'eq:ch1.$\mathcal{D}_J=1$-residual'; New = 'eq:ch1.admissibility-residual' }
    @{ Old = 'eq:ch2.source-$\mathcal{D}_J=1$'; New = 'eq:ch2.source-admissibility' }
    @{ Old = 'eq:ch2.source-Maxwell-closed'; New = 'eq:ch2.source-admissibility' }
    @{ Old = 'eq:ch2.$\mathcal{D}_J=1$-embedding'; New = 'eq:ch2.admissibility-embedding' }
    @{ Old = 'eq:ch2.closure-$\mathcal{D}_J=1$-lock'; New = 'eq:ch2.closure-admissibility-lock' }
    @{ Old = 'eq:ch3.representation-$\mathcal{D}_J=1$'; New = 'eq:ch3.representation-admissibility' }
    @{ Old = 'eq:ch3.representation-Maxwell-closed'; New = 'eq:ch3.representation-admissibility' }
    @{ Old = 'eq:ch3.outgoing-radial-$\mathcal{D}_J=1$'; New = 'eq:ch3.outgoing-radial-admissibility' }
    @{ Old = 'eq:ch3.outgoing-radial-Maxwell-closed'; New = 'eq:ch3.outgoing-radial-admissibility' }
    @{ Old = 'eq:ch3.J-$\mathcal{E}_{\mathrm{acc}}^{(N)}$-composition'; New = 'eq:ch3.J-accessibility-composition' }
    @{ Old = 'eq:ch4.coupling-$\mathcal{D}_J=1$'; New = 'eq:ch4.coupling-admissibility' }
    @{ Old = 'eq:ch4.coupling-Maxwell-closed'; New = 'eq:ch4.coupling-admissibility' }
    @{ Old = 'eq:ch4.$\mathcal{S}_{\mathrm{real}}$-screen'; New = 'eq:ch4.realizability-screen' }
    @{ Old = 'def:ch4.synthesizable-screen'; New = 'def:ch4.realizability-screen' }
    @{ Old = 'eq:ch4.synthesizable-screen'; New = 'eq:ch4.realizability-screen' }
    @{ Old = 'eq:ch4.propagating-$\mathcal{S}_{\mathrm{real}}$'; New = 'eq:ch4.propagating-realizable' }
    @{ Old = 'eq:ch4.weight-$\mathcal{E}_{\mathrm{acc}}^{(N)}$-intersection'; New = 'eq:ch4.weight-accessibility-intersection' }
    @{ Old = 'eq:ch4.$\mathcal{S}_{\mathrm{real}}$-compression'; New = 'eq:ch4.realizability-compression' }
    @{ Old = 'eq:ch4.$\mathcal{E}_{\mathrm{acc}}^{(N)}$-envelope'; New = 'eq:ch4.accessibility-envelope' }
    @{ Old = 'def:ch4.$\mathcal{E}_{\mathrm{acc}}^{(N)}$-envelope'; New = 'def:ch4.accessibility-envelope' }
    @{ Old = 'def:ch4.$\mathcal{S}_{\mathrm{real}}$-screen'; New = 'def:ch4.realizability-screen' }
    @{ Old = 'prop:ch4.aperture-$\mathcal{S}_{\mathrm{real}}$-reduction'; New = 'prop:ch4.aperture-realizability-reduction' }
    @{ Old = 'thm:ch3.J-labeling-Maxwell-closed'; New = 'thm:ch3.J-labeling-admissibility' }
    @{ Old = 'thm:ch1.synthesizable-hierarchy'; New = 'thm:ch1.realizability-hierarchy' }
    @{ Old = 'prop:ch4.distributional-$\mathcal{S}_{\mathrm{real}}$'; New = 'prop:ch4.distributional-realizability' }
    @{ Old = 'prop:ch4.tangential-$\mathcal{S}_{\mathrm{real}}$-condition'; New = 'prop:ch4.tangential-realizability-condition' }
    @{ Old = 'thm:ch4.composite-tangential-$\mathcal{S}_{\mathrm{real}}$'; New = 'thm:ch4.composite-tangential-realizability' }
    @{ Old = 'cor:ch4.reg-not-$\mathcal{S}_{\mathrm{real}}$'; New = 'cor:ch4.reg-not-realizable' }
    @{ Old = 'fig:ch3.392-$\mathcal{E}_{\mathrm{acc}}^{(N)}$-hel'; New = 'fig:ch3.392-accessibility-hel' }
    @{ Old = 'tab:ch1.Maxwell-closed-corollaries'; New = 'tab:ch1.admissibility-corollaries' }
    @{ Old = 'prop:ch1.stress-torque-Maxwell-closed'; New = 'prop:ch1.stress-torque-admissibility' }
    @{ Old = 'eq:ch1.global-observable-Maxwell-closed'; New = 'eq:ch1.global-observable-admissibility' }
    @{ Old = 'eq:ch1.global-observable-charge-continuous'; New = 'eq:ch1.global-observable-admissibility' }
)

foreach ($f in @('ch01.tex','ch02.tex','ch03.tex','ch04.tex')) {
    $path = Join-Path $latex $f
    $c = [IO.File]::ReadAllText($path)
    $raw = $c
    foreach ($r in $restores) { $c = $c.Replace($r.Old, $r.New) }
    if ($c -ne $raw) {
        [IO.File]::WriteAllText($path, $c, [Text.UTF8Encoding]::new($false))
        Write-Host "Restored refs in: $f"
    }
}

$left = @()
foreach ($f in @('ch01.tex','ch02.tex','ch03.tex','ch04.tex')) {
    $path = Join-Path $latex $f
    if ([regex]::IsMatch([IO.File]::ReadAllText($path), '\$\{?\\mathcal|Maxwell-closed|synthesizable-screen')) {
        $left += $f
    }
}
if ($left.Count -gt 0) {
    Write-Host "WARN: possible remaining corrupted refs in: $($left -join ', ')"
}
Write-Host 'Label/ref restore complete.'
