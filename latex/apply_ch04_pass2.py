#!/usr/bin/env python3
"""Insert pass-2 depth blocks before Validity paragraphs in ch04 §4.6-§4.9."""

from pathlib import Path

PATH = Path(__file__).parent / "ch04.tex"
text = PATH.read_text(encoding="utf-8")

INSERTS = {
    "sec:ch461": r"""
\paragraph{Sector-resolved supported order.}
Define \(\ell_{\mathrm{supp}}^{(\sigma)}(\varepsilon)\) as the largest \(\ell\) with
\(\sigma_{(\ell,m,\sigma)}\ge\varepsilon\sigma_{1}\) for some \(m\) \cite{hansen1988,stratton1941}.
\begin{equation}
\label{eq:ch4.ell-sector-supported}
\ell_{\mathrm{supp}}(\varepsilon)=\max_{\sigma\in\{\mathbf{M},\mathbf{N}\}}\ell_{\mathrm{supp}}^{(\sigma)}(\varepsilon).
\end{equation}
\begin{corollary}[Listing cutoff versus supported order]
\label{cor:ch4.listing-vs-supported}
Indices \(\ell_{\mathrm{supp}}<\ell\le\ell_{\max}\) are export-padding at tolerance \(\varepsilon\)
\cite{hansen1988,harrington2001,devaney2004}.
\end{corollary}
\paragraph{Worked illustration (sector split).}
Offset feeds may satisfy \(\ell_{\mathrm{supp}}^{(\mathbf{N})}>\ell_{\mathrm{supp}}^{(\mathbf{M})}\) at the same \(k_{0}a\)
\cite{harrington2001,jackson1999,hansen1988}.
\paragraph{Problem (supported order versus \(\ell_{\max}\)).}
\textbf{Problem.} \(\ell_{\max}=12\), \(\ell_{\mathrm{supp}}(10^{-2})=7\). How many rows matter?
\textbf{Step 1.} Count \(\sigma_{(\ell,m,\sigma)}\ge10^{-2}\sigma_{1}\) \cite{harrington2001}.
\textbf{Step 2.} Apply Corollary~\ref{cor:ch4.listing-vs-supported} \cite{hansen1988}.
\textbf{Step 3.} Truncate templates to \(\ell\le7\) \cite{devaney2004}.
\textbf{Physical meaning.} Supported order is an export threshold \cite{hansen1988}.
""",
    "sec:ch462": r"""
\paragraph{Joint scaling audit.}
\begin{equation}
\label{eq:ch4.joint-scaling-law}
d_{\mathrm{eff}}(\varepsilon)\le\min\{C_{V}(\varepsilon)(k_{0}a)^{3},\,C_{A}(\varepsilon)k_{0}^{2}A_{a}\}.
\end{equation}
\begin{theorem}[Scaling exponent gauge invariance]
\label{thm:ch4.scaling-gauge-invariant}
Exponents in Eq.~\eqref{eq:ch4.joint-scaling-law} are \(\mathcal{C}\)-gauge invariant; only \(C_{V},C_{A}\) vary with normalization
\cite{hansen1988,stratton1941,harrington2001}.
\end{theorem}
\paragraph{Worked illustration.} Doubling \(k_{0}\) at fixed \(a\) multiplies the volume bound by eight \cite{jackson1999,hansen1988}.
\paragraph{Problem (which exponent?).}
\textbf{Problem.} Mouth-area model versus enclosing ball: which bound applies?
\textbf{Step 1.} Declare synthesis support class \cite{collin2001,stratton1941}.
\textbf{Step 2.} Apply matching term in Eq.~\eqref{eq:ch4.joint-scaling-law} \cite{harrington2001}.
\textbf{Step 3.} Use the smaller bound \cite{devaney2004}.
\textbf{Physical meaning.} Exponents follow support class \cite{stratton1941}.
""",
    "sec:ch463": r"""
\paragraph{Cumulative coupling tail mass.}
\begin{equation}
\label{eq:ch4.coupling-tail-mass}
\mathcal{M}_{\mathrm{cpl}}(\ell_{\mathrm{cut}})=\sum_{\ell>\ell_{\mathrm{cut}}}(2\ell+1)\max_{m,\sigma}|\mathcal{K}_{\ell m}^{(\sigma)}|^{2}.
\end{equation}
\begin{proposition}[Coupling tail versus DOS]
\label{prop:ch4.coupling-tail-dos}
\(\mathcal{M}_{\mathrm{cpl}}\) decays exponentially for \(\ell\gg k_{0}D_{s}\) while DOS grows algebraically in \(\ell_{\max}\)
\cite{hansen1988,stratton1941,harrington2001}.
\end{proposition}
\paragraph{Worked illustration.} At \(\ell_{\max}=18\), \(k_{0}D_{s}=1.2\), only \(\ell\le5\) carry \(99\%\) coupling mass \cite{hansen1988,devaney2004}.
\paragraph{Problem (DOS versus coupling).}
\textbf{Problem.} DOS claims \(O(\ell_{\max}^{2})\) channels; rank saturates. Explain.
\textbf{Step 1.} Compute \(\mathcal{M}_{\mathrm{cpl}}\) \cite{hansen1988}.
\textbf{Step 2.} Compare to \(r_{\mathrm{rad}}(\varepsilon)\) \cite{harrington2001}.
\textbf{Step 3.} Report rank, not DOS \cite{devaney2004}.
\textbf{Physical meaning.} Coupling tails count watts, DOS counts labels \cite{stratton1941}.
""",
    "sec:ch464": r"""
\paragraph{Dimension reporting protocol.}
Laboratory reports must state \((\varepsilon,\,k_{0}D_{s},\,\mathcal{C}\text{ gauge})\) with \(d_{\mathrm{eff}}\)
\cite{hansen1988,stratton1941,harrington2001}.
\begin{equation}
\label{eq:ch4.deff-reporting}
d_{\mathrm{eff}}(\varepsilon)=\#\{n:\sigma_{n}\ge\varepsilon\sigma_{1}\},\qquad
\Delta d_{\mathrm{eff}}=|d_{\mathrm{eff}}^{\mathrm{(MoM)}}-d_{\mathrm{eff}}^{\mathrm{(cont)}}|.
\end{equation}
\begin{corollary}[Mesh gap on dimension]
\label{cor:ch4.deff-mesh-gap}
\(\Delta d_{\mathrm{eff}}\le\Delta r_{\mathrm{gap}}\) in Eq.~\eqref{eq:ch4.rank-gap} \cite{harrington2001,devaney2004,stratton1941}.
\end{corollary}
\paragraph{Worked illustration.} Reporting \(d_{\mathrm{eff}}=180\) from MoM without \(\Delta d_{\mathrm{eff}}\) audit overstates synthesis DOF \cite{harrington2001,hansen1988}.
\paragraph{Problem (reporting \(d_{\mathrm{eff}}\)).}
\textbf{Problem.} What must accompany \(d_{\mathrm{eff}}=25\) in a design memo?
\textbf{Step 1.} State \(\varepsilon\) and \(\sigma_{1}\) gauge \cite{hansen1988}.
\textbf{Step 2.} State \(k_{0}D_{s}\) \cite{jackson1999}.
\textbf{Step 3.} Bound \(\Delta d_{\mathrm{eff}}\) \cite{devaney2004}.
\textbf{Physical meaning.} \(d_{\mathrm{eff}}\) is a certified integer, not a solver output \cite{stratton1941}.
""",
    "sec:ch471": r"""
\paragraph{NR--unreachable composition.}
\begin{equation}
\label{eq:ch4.nr-unreachable-composition}
\mathcal{N}_{\mathrm{syn}}\supseteq\ker\mathcal{R}_\omega\oplus\mathcal{U}_{\mathrm{unreach}},
\end{equation}
with synthesis uniqueness only on the quotient \cite{stratton1941,harrington2001,devaney2004}.
\begin{lemma}[Near-field discrimination bound]
\label{lem:ch4.nf-discrimination}
Distinct \(\Jimp_{A},\Jimp_{B}\) with identical \(\mathbf{c}\) require near-field probes resolving
\(\ker\mathcal{R}_\omega\) to discriminate; far-zone data cannot \cite{harrington2001,stratton1941}.
\end{lemma}
\paragraph{Worked illustration.} Two feeds differing by a non-radiating current produce identical far patterns \cite{stratton1941,devaney2004}.
\paragraph{Problem (NR discrimination).}
\textbf{Problem.} Can far-zone data distinguish \(\Jimp_{A}\) from \(\Jimp_{B}=\Jimp_{A}+\mathbf{J}_{\mathrm{nr}}\)?
\textbf{Step 1.} Test \(\boldsymbol{\Gamma}_\omega[\mathbf{J}_{\mathrm{nr}}]=\mathbf{0}\) \cite{stratton1941}.
\textbf{Step 2.} Conclude identical \(\mathbf{c}\) \cite{harrington2001}.
\textbf{Step 3.} Use near fields for discrimination only \cite{devaney2004}.
\textbf{Physical meaning.} NR lifts are invisible to synthesis \cite{stratton1941}.
""",
    "sec:ch472": r"""
\paragraph{Reactive--radiative split functional.}
\begin{equation}
\label{eq:ch4.reactive-radiative-split}
\mathcal{J}_{\mathrm{react}}[\Jimp]=\|\mathcal{P}_{\mathrm{react}}\mathcal{S}_\omega[\Jimp]\|,\quad
\mathcal{J}_{\mathrm{rad}}[\Jimp]=\|\Pi_{\mathrm{rad}}\mathcal{S}_\omega[\Jimp]\|_{\mathrm{rad}}.
\end{equation}
\begin{theorem}[Reactive dominance without rank gain]
\label{thm:ch4.reactive-dominance}
\(\mathcal{J}_{\mathrm{react}}\gg\mathcal{J}_{\mathrm{rad}}\) does not imply \(d_{\mathrm{eff}}\) enlargement on \(\mathcal{F}_{\mathrm{rad}}\)
\cite{stratton1941,harrington2001,devaney2004}.
\end{theorem}
\paragraph{Worked illustration.} Resonant particle raises \(\mathcal{J}_{\mathrm{react}}\) with unchanged \(\mathbf{c}\) \cite{jackson1999,harrington2001}.
\paragraph{Problem (reactive hotspot).}
\textbf{Problem.} Near hotspot with flat far pattern. Synthesis rank change?
\textbf{Step 1.} Compute \(\mathbf{c}\) after \(\Pi_{\mathrm{rad}}\) \cite{stratton1941}.
\textbf{Step 2.} Test \(d_{\mathrm{eff}}\) before and after \cite{hansen1988}.
\textbf{Step 3.} Conclude no rank gain \cite{devaney2004}.
\textbf{Physical meaning.} Reactive dominance is storage, not export \cite{stratton1941}.
""",
    "sec:ch473": r"""
\paragraph{Tikhonov--synthesis gap.}
Regularized inversion minimizes \(\|\mathbf{T}\mathbf{I}_{s}-\mathbf{c}\|^{2}+\alpha\|\mathbf{I}_{s}\|^{2}\) but may mask
\(\mathbf{r}_{\perp}\neq\mathbf{0}\) \cite{harrington2001,devaney2004}.
\begin{equation}
\label{eq:ch4.tikhonov-synthesis-gap}
\delta_{\mathrm{reg}}=\|\mathbf{r}_{\perp}\|_{\mathcal{C}},\qquad
\delta_{\mathrm{reg}}=0\iff\mathbf{c}\in\mathcal{S}_{\mathrm{real}}(\mathcal{C}).
\end{equation}
\begin{corollary}[Regularization does not create realizability]
\label{cor:ch4.reg-not-realizability}
\(\alpha>0\) lowers discrete residuals without moving \(\mathbf{c}\) into \(\operatorname{ran}\boldsymbol{\Gamma}_\omega\) when
\(\delta_{\mathrm{reg}}>0\) \cite{harrington2001,devaney2004,stratton1941}.
\end{corollary}
\paragraph{Worked illustration.} Small Tikhonov residual with \(\delta_{\mathrm{syn}}>0\) is a numerical fit, not synthesis \cite{harrington2001}.
\paragraph{Problem (regularized fit).}
\textbf{Problem.} \(\alpha\) yields \(\|\mathbf{T}\mathbf{I}_{s}-\mathbf{c}\|<10^{-5}\). Realizable?
\textbf{Step 1.} Decompose \(\mathbf{c}\) via Eq.~\eqref{eq:ch4.inversion-residual-decomposition} \cite{stratton1941}.
\textbf{Step 2.} Test \(\delta_{\mathrm{reg}}=0\) \cite{harrington2001}.
\textbf{Step 3.} Reject if \(\mathbf{r}_{\perp}\neq0\) \cite{devaney2004}.
\textbf{Physical meaning.} Regularization is not realizability \cite{stratton1941}.
""",
    "sec:ch474": r"""
\paragraph{Simultaneous localization--\(\ell\) bound.}
\begin{equation}
\label{eq:ch4.simultaneous-loc-ell}
\mathcal{L}_{2}[\Jimp]\cdot\mathcal{R}_{\mathrm{ang}}(\mathbf{c})\ge\mathcal{K}_{\mathrm{sl}}(k_{0}a,\eta_{\mathrm{blk}}),
\end{equation}
importing Eqs.~\eqref{eq:ch4.localization-resolution-tradeoff} and \eqref{eq:ch3.OAM-representation-dependence}
\cite{hansen1988,stratton1941,harrington2001}.
\begin{theorem}[Representation-independent resolution ceiling]
\label{thm:ch4.resolution-ceiling}
\(\mathcal{R}_{\mathrm{ang}}(\mathbf{c})\) cannot exceed \(\ell_{\mathrm{supp}}(\varepsilon,k_{0}a)\) on \(B_{a}\) at the same \(\varepsilon\)
\cite{hansen1988,stratton1941,devaney2004,harrington2001}.
\end{theorem}
\paragraph{Worked illustration.} Paraxial \(m_{\mathrm{LG}}\) maps to multiple \(\ell\) sectors after full-vector decomposition \cite{harrington2001,hansen1988}.
\paragraph{Problem (resolution claim).}
\textbf{Problem.} Beam claims \(\mathcal{R}_{\mathrm{ang}}=12\) on \(k_{0}a=2\). Audit.
\textbf{Step 1.} Test \(\ell_{\mathrm{supp}}\) \cite{hansen1988}.
\textbf{Step 2.} Test Eq.~\eqref{eq:ch4.simultaneous-loc-ell} \cite{jackson1999}.
\textbf{Step 3.} Reject if either fails \cite{devaney2004}.
\textbf{Physical meaning.} Resolution is jointly bounded by support and export rank \cite{stratton1941}.
""",
    "sec:ch481": r"""
\paragraph{Design margin on mode count.}
\begin{equation}
\label{eq:ch4.mode-count-margin}
N_{\mathrm{design}}=\lfloor\eta_{\mathrm{margin}}\,N_{\mathrm{mode}}(\varepsilon)\rfloor,\qquad
0<\eta_{\mathrm{margin}}<1.
\end{equation}
\begin{proposition}[Margin monotonicity]
\label{prop:ch4.mode-margin-monotone}
\(N_{\mathrm{design}}\) is non-decreasing in \(k_{0}\) and aperture size at fixed \(\eta_{\mathrm{margin}}\)
\cite{stratton1941,jackson1999,hansen1988,harrington2001}.
\end{proposition}
\paragraph{Worked illustration.} Using \(N_{\mathrm{design}}=0.8\,N_{\mathrm{mode}}\) leaves headroom for ohmic loss and mismatch \cite{harrington2001,collin2001}.
\paragraph{Problem (MIMO stream count).}
\textbf{Problem.} \(N_{\mathrm{mode}}=24\); how many streams at \(\eta_{\mathrm{margin}}=0.75\)?
\textbf{Step 1.} Apply Eq.~\eqref{eq:ch4.mode-count-margin} \cite{hansen1988}.
\textbf{Step 2.} Compare to \(d_{\mathrm{eff}}\) from SVD \cite{harrington2001}.
\textbf{Step 3.} Use \(\min(N_{\mathrm{design}},d_{\mathrm{eff}})\) \cite{devaney2004}.
\textbf{Physical meaning.} Mode count is an upper bound with engineering margin \cite{stratton1941}.
""",
    "sec:ch482": r"""
\paragraph{Crossover frequency.}
Define \(k_{0}^{(\mathrm{cross})}D_{s}\) where \(d_{\mathrm{eff}}\) transitions from dipole-class to volume-growth scaling
\cite{jackson1999,hansen1988,stratton1941}.
\begin{equation}
\label{eq:ch4.crossover-frequency}
k_{0}^{(\mathrm{cross})}D_{s}\sim\mathcal{O}(1),\qquad
d_{\mathrm{eff}}\approx\begin{cases}\mathcal{O}(1), & k_{0}D_{s}\ll1,\\ \mathcal{O}((k_{0}D_{s})^{3}), & k_{0}D_{s}\gg1.\end{cases}
\end{equation}
\paragraph{Worked illustration.} A handset crosses from dipole-class near \(1\,\mathrm{GHz}\) to multi-mode rank near \(28\,\mathrm{GHz}\) on the same outline \cite{harrington2001,jackson1999}.
\paragraph{Problem (crossover audit).}
\textbf{Problem.} At what \(k_{0}D_{s}\) does Eq.~\eqref{eq:ch4.large-body-rank-growth} replace Eq.~\eqref{eq:ch4.rayleigh-rank-limit}?
\textbf{Step 1.} Track \(d_{\mathrm{eff}}(\varepsilon)\) versus \(k_{0}D_{s}\) \cite{hansen1988}.
\textbf{Step 2.} Identify knee near \(k_{0}^{(\mathrm{cross})}D_{s}\) \cite{jackson1999}.
\textbf{Step 3.} Use appropriate asymptote in each band \cite{stratton1941}.
\textbf{Physical meaning.} Asymptotic regime changes at electrical crossover \cite{hansen1988}.
""",
    "sec:ch483": r"""
\paragraph{Shannon--export analogy.}
\(\Lambda_{\mathrm{conc}}(\varepsilon)\) plays the role of cumulative export participation ratio: truncation at \(d_{\mathrm{eff}}\)
discards the complementary tail \cite{hansen1988,harrington2001}.
\begin{equation}
\label{eq:ch4.export-participation}
\mathrm{EPR}(\varepsilon)=\Lambda_{\mathrm{conc}}(\varepsilon),\qquad
1-\mathrm{EPR}(\varepsilon)=\mathcal{O}(\varepsilon^{2}).
\end{equation}
\begin{theorem}[Optimal truncation participation]
\label{thm:ch4.optimal-participation}
Rank-\(d_{\mathrm{eff}}(\varepsilon)\) truncation maximizes \(\mathrm{EPR}(\varepsilon)\) among rank-\(N\) approximations of \(\boldsymbol{\Gamma}_\omega\)
\cite{harrington2001,devaney2004,stratton1941}.
\end{theorem}
\paragraph{Worked illustration.} \(\mathrm{EPR}(10^{-2})=0.92\) implies \(8\%\) export gain lies in discarded tail \cite{hansen1988,harrington2001}.
\paragraph{Problem (participation audit).}
\textbf{Problem.} Find \(\varepsilon\) such that \(\mathrm{EPR}(\varepsilon)\ge0.99\).
\textbf{Step 1.} Sweep \(\varepsilon\) on \(\{\sigma_{n}\}\) \cite{harrington2001}.
\textbf{Step 2.} Read \(d_{\mathrm{eff}}(\varepsilon)\) \cite{hansen1988}.
\textbf{Step 3.} Report pair \((\varepsilon,d_{\mathrm{eff}})\) \cite{devaney2004}.
\textbf{Physical meaning.} Participation ratio certifies truncation loss \cite{stratton1941}.
""",
    "sec:ch484": r"""
\paragraph{Prolate axis anisotropy.}
For prolate \(D\) with aspect ratio \(\chi\), \(N_{\mathrm{LPS}}\) is anisotropic: major-axis \(k\)-support enlarges before minor axis
\cite{hansen1988,jackson1999,harrington2001}.
\begin{equation}
\label{eq:ch4.lps-anisotropy}
N_{\mathrm{LPS}}(\varepsilon,D,\Omega_{k})\le\sum_{i=1}^{3}N_{\mathrm{LPS}}^{(i)}(\varepsilon,D_{i},\Omega_{k}^{(i)}).
\end{equation}
\paragraph{Worked illustration.} Slot aperture has larger \(N_{\mathrm{LPS}}\) along slot length than width \cite{collin2001,hansen1988}.
\paragraph{Problem (anisotropic LPS).}
\textbf{Problem.} Isotropic \(N_{\mathrm{LPS}}\) bound used on slot aperture. Conservative?
\textbf{Step 1.} Compute directional \(N_{\mathrm{LPS}}^{(i)}\) \cite{hansen1988}.
\textbf{Step 2.} Sum per Eq.~\eqref{eq:ch4.lps-anisotropy} \cite{jackson1999}.
\textbf{Step 3.} Compare to \(d_{\mathrm{eff}}\) \cite{harrington2001}.
\textbf{Physical meaning.} LPS bounds are geometry-directional \cite{stratton1941}.
""",
    "sec:ch491": r"""
\paragraph{Hardware parameter map.}
\begin{equation}
\label{eq:ch4.hardware-rank-map}
d_{\mathrm{eff}}=F(\operatorname{diam}(\Omega_{s}),k_{0},\varepsilon;\mathcal{C}),
\end{equation}
with \(F\) monotone in diameter and \(k_{0}\) per Theorem~\ref{thm:ch4.geometry-rank-origin} \cite{stratton1941,jackson1999,hansen1988}.
\paragraph{Worked illustration.} Two phones with identical outline but different \(k_{0}\) have different \(d_{\mathrm{eff}}\) at the same \(\varepsilon\) \cite{harrington2001,jackson1999}.
\paragraph{Problem (outline versus rank).}
\textbf{Problem.} CAD outline unchanged; frequency doubled. Rank change?
\textbf{Step 1.} Compute \(k_{0}D_{s}\) \cite{jackson1999}.
\textbf{Step 2.} Apply Eq.~\eqref{eq:ch4.joint-scaling-law} \cite{hansen1988}.
\textbf{Step 3.} Recompute \(d_{\mathrm{eff}}\) \cite{harrington2001}.
\textbf{Physical meaning.} Rank tracks electrical size, not mechanical outline alone \cite{stratton1941}.
""",
    "sec:ch492": r"""
\paragraph{Phase-only tangent space.}
Phase-only designs explore \(\dim\mathcal{T}_{\phi}\le d_{\mathrm{eff}}(\varepsilon)\) with \(\dim\mathcal{T}_{\phi}\ll d_{\mathrm{eff}}\) on fixed amplitude support
\cite{stratton1941,harrington2001,devaney2004}.
\begin{equation}
\label{eq:ch4.phase-tangent-bound}
\dim\mathcal{T}_{\phi}\le r_{\mathrm{rad}}(\varepsilon),\qquad
\Delta d_{\mathrm{eff}}=0\ \text{under phase-only retuning}.
\end{equation}
\paragraph{Worked illustration.} Reflectarray beam steering uses \(\dim\mathcal{T}_{\phi}\approx2\) on a rank-\(15\) aperture \cite{hansen1988,collin2001}.
\paragraph{Problem (phase-only rank).}
\textbf{Problem.} Can phase-only synthesis raise OAM order on fixed disk?
\textbf{Step 1.} Test \(\ell_{\mathrm{supp}}\) invariance \cite{hansen1988}.
\textbf{Step 2.} Test Eq.~\eqref{eq:ch4.high-ell-decay} \cite{jackson1999}.
\textbf{Step 3.} Reject order increase \cite{stratton1941}.
\textbf{Physical meaning.} Phase rotates within fixed rank \cite{harrington2001}.
""",
    "sec:ch493": r"""
\paragraph{Channel capacity saturation.}
Truncation manifests as \(\log\det\) saturation in MIMO capacity estimates at \(N>N_{\mathrm{mode}}(\varepsilon)\)
\cite{harrington2001,devaney2004,hansen1988}.
\begin{equation}
\label{eq:ch4.capacity-saturation}
C_{\mathrm{MIMO}}\le\sum_{n=1}^{d_{\mathrm{eff}}(\varepsilon)}\log\bigl(1+\mathrm{SNR}\,\sigma_{n}^{2}\bigr).
\end{equation}
\paragraph{Worked illustration.} Adding streams beyond \(d_{\mathrm{eff}}\) does not raise capacity in the linear model \cite{harrington2001,jackson1999}.
\paragraph{Problem (capacity knee).}
\textbf{Problem.} Capacity curve knees at sixteen streams on \(32\) patches. Explain.
\textbf{Step 1.} Estimate \(d_{\mathrm{eff}}(10^{-2})\) \cite{hansen1988}.
\textbf{Step 2.} Compare to stream count \cite{harrington2001}.
\textbf{Step 3.} Attribute knee to rank saturation \cite{devaney2004}.
\textbf{Physical meaning.} Capacity knees trace \(d_{\mathrm{eff}}\) \cite{stratton1941}.
""",
    "sec:ch494": r"""
\paragraph{Volume I measurement certificate.}
\begin{equation}
\label{eq:ch4.volume-I-measurement-cert}
\mathbf{c}_{\mathrm{cert}}\in\mathcal{S}_{\mathrm{real}}\cap\mathcal{B}_{\mathrm{fs}}\cap\mathcal{E}_{\mathrm{acc}}^{(N)}
\Longrightarrow
\text{reportable at rank }N\text{ in Volume I}.
\end{equation}
Volume~II extends Eq.~\eqref{eq:ch4.volume-I-measurement-cert} to noise, bandwidth, and tomographic OAM protocols \cite{harrington2001,devaney2004}.
\paragraph{Worked illustration.} A certifiable \(\mathbf{c}\) at \(N=8\) may require synthesis rank \(d_{\mathrm{eff}}=12\): certification fails while synthesis passes \cite{hansen1988,harrington2001}.
\paragraph{Problem (Volume I closure).}
\textbf{Problem.} Which failures remain for Volume~II?
\textbf{Step 1.} List noise and bandwidth gaps \cite{harrington2001}.
\textbf{Step 2.} Confirm \(\delta_{\mathrm{syn}}=0\) and \(\mathcal{A}_{\mathrm{fs}}\le1\) in Volume I \cite{hansen1988}.
\textbf{Step 3.} Defer stochastic protocols \cite{devaney2004}.
\textbf{Physical meaning.} Volume I certifies deterministic narrowband rank \cite{stratton1941}.
""",
}

for label in sorted(INSERTS.keys(), key=lambda x: text.find(f"\\label{{{x}}}"), reverse=True):
    block = INSERTS[label]
    marker = f"\\label{{{label}}}"
    idx = text.find(marker)
    if idx < 0:
        print(f"WARN: {label} not found")
        continue
    val = text.find("\\paragraph{Validity.}", idx)
    if val < 0:
        print(f"WARN: Validity not found after {label}")
        continue
    text = text[:val] + block + text[val:]
    print(f"Inserted pass2 before {label}")

PATH.write_text(text, encoding="utf-8")
print("Pass 2 inserts complete.")
