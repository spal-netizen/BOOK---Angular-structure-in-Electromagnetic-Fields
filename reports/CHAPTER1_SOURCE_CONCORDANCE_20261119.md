# Chapter 1 — claim-level source concordance (author register)

**Not included in textbook body.**  
**Date:** 2026-11-19  
**Manuscript:** `latex/ch01.tex` → `VOLUME_I_RELEASE/CHAPTER1_FINAL_BENCHMARK_20261119.pdf`

**Chapter conventions (fixed for this register):** \(\exp(+j\omega t)\); outgoing spatial factor \(e^{-jk_0 r}\); peak phasors; SI; exterior normal outward from control volume.

| ID | Manuscript claim | Primary source | Source location | Relation | Conv. / SI | Verification |
|----|------------------|----------------|-----------------|----------|------------|--------------|
| C01 | Symmetric Maxwell stress (Eq. stress tensor) | Stratton (1941) | Ch. 2, stress dyad | Adapted | Same SI | **verified** — re-derived from \(\varepsilon_0\mathbf{E}\mathbf{E}^*+\mu_0\mathbf{H}\mathbf{H}^*\) |
| C02 | CP plane-wave \(\langle T_{xx}\rangle=\langle T_{yy}\rangle=0\), \(\langle T_{zz}\rangle=-\varepsilon_0|E_0|^2/2\) | Stratton / this ch. | Eq. `ex61-cp-stress-nonzero` | Derived | \(E_0/\sqrt2\) CP phasor | **verified** — independent substitution into Eq. (1.65) |
| C03 | Beth torque \(\boldsymbol{\tau}=\mathbf P\times\mathbf E\), \(K_{xx}\neq K_{yy}\), \(\mathbf k\parallel\hat z\) | Beth (1936) | Classical electromagnetic torque on wave plates | Reproduced | SI conversion | **verified with qualification** — geometry corrected from optic-axis wording |
| C04 | Ideal scales \(P/\omega\), \(2P/\omega\) (uniform CP, HWP) | Beth / Belinfante | Beth measurement context | Extended (ideal limits) | Same \(\omega\) | **verified with qualification** — not Beth multi-pass measured values |
| C05 | Outward Green \(e^{-jk_0 R}/(4\pi R)\) | Jackson / Stratton | Green function Ch. | Adapted | Outgoing branch matched | **verified** |
| C06 | Exterior uniqueness (Theorem 1.5) | Sommerfeld, Harrington, Colton–Kress | Radiation BVP literature | Synthesized proof | \(h_\ell^{(2)}\), \(\hat n_{\mathrm{ext}}\) | **verified with qualification** — Rellich step cited, not re-proved from Colton–Kress |
| C07 | Hansen VSW orthogonality / coefficients | Stratton §7.11; Hansen | Vector harmonics | Quoted + used | Same \(\exp(+j\omega t)\) | **verified with qualification** — normalization cited, not full measure proof |
| C08 | Hertzian dipole fields \(r^{-3},r^{-2},r^{-1}\) | Stratton; Yaghjian | Point dipole | Derived + cited | Distributional \(\delta^3\) | **verified** — Maxwell curl at \(r>0\) in text |
| C09 | Hessian contact \(-\frac13\delta_{ij}\delta^3(\mathbf r)\) | Jackson / Yaghjian | Isotropic ball limit | Derived | SI | **verified** |
| C10 | \(P_{\mathrm{reac}}/P_{\mathrm{rad}}=(kr)^{-3}\) example | This chapter | Dipole shell | Derived | 300 MHz numerics | **verified** — \(kr=0.1\pi\), \(10\pi\) |
| C11 | Chu modal \(z_n(p)=j\,\frac{d[ph_n^{(2)}]/dp}{ph_n^{(2)}(p)}\) | Chu (1948); TR-064 | Eq. (7) | Reproduced | Outgoing \(h_n^{(2)}\) | **verified** — \(z_1(0.5)\approx0.20-j1.60\), \(Z_1^{\mathrm{SI}}\approx75-j603\,\Omega\) (independent calc 2026-11-19) |
| C12 | McLean \(Q_{\mathrm{LB}}=(ka)^{-3}+(ka)^{-1}\) | McLean (1996) | Ideal \(TM_{01}\) | Quoted | Benchmark class only | **verified with qualification** — not arbitrary antenna |
| C13 | Counter-rotating \(P_+=P_-\Rightarrow\) net modal flux 0 | Allen et al.; modal §1.6.2 | Paraxial/modal estimate | Conditional | Remark `m-plus-sigma` | **verified with qualification** — not closed-surface theorem |
| C14 | \([\boldsymbol{\mathcal{T}}_J]=[\boldsymbol{\Phi}_{J,\mathrm{out}}]=\mathrm{N\,m}=\mathrm{J}\) | Stratton momentum theory | This chapter Table 1.1 | Derived | \(\mathbf M=\mathbf r\times\mathbf T\) | **verified** — dimensional audit 2026-11-19 |

### Colton–Kress–Hsiao ↔ Theorem 1.5 (conversion table)

| Item | Manuscript | Colton, Kress, Hsiao (1981), *Math. Meth. Appl. Sci.* 3, 475–487 | Status |
|------|------------|---------------------------------------------------------------------|--------|
| Governing PDE | Time-harmonic Maxwell, \(\exp(+j\omega t)\) | Time-harmonic Maxwell impedance BVP | Related |
| Impedance | Scalar passive \(Z_s\), \(\Re Z_s>0\), Eq. `outer-boundary-classes` | Impedance boundary operator in paper | Adapted |
| Normal | \(\hat n_{\mathrm{ext}}=-\hat n_{\mathrm{body}}\) | Must be converted at each claim | Verified at manuscript boundary |
| Radiation | Eq. `radiation-trace-condition`, \(h_\ell^{(2)}\) | Outgoing / Silver–Müller class in paper | **verified with qualification** |
| Uniqueness proof | Energy + far field + VSW + Rellich (Thm. 1.5) | Functional-analytic uniqueness in their class | Different proof route |
| Existence | Not claimed in Ch. 1 | Established under their hypotheses | Manuscript narrower |

DOI: `10.1002/mma.1670030133`. Equation numbers **not** quoted from the PDF in this register without a held copy; manuscript cites the paper for impedance BVP context only.

### Unresolved / deferred

| ID | Issue | Missing evidence |
|----|-------|------------------|
| U01 | Full Colton–Kress–Hsiao impedance BVP theorem ↔ Theorem 1.5 | Primary theorem number and passive-class hypotheses not line-matched in this run |
| U02 | Beth absolute torque calibration vs. SI face flux | Beth reports relative checks; absolute scale uncertainty retained in prose |
| U03 | Yaghjian dipole normalizations vs. every displayed prefactor | Spot-checked; not every equation number cross-walked |

### Convention conversions logged

- Time: all sources checked against \(\exp(+j\omega t)\) and \(e^{-jkr}\) outgoing factor before adopting Chu/Hankel formulas.
- Impedance boundary: \(\hat{\mathbf{n}}_{\mathrm{ext}}=-\hat{\mathbf{n}}_{\mathrm{body}}\); absorption nonnegative on \(\Gamma_Z\) (Eqs. impedance power).