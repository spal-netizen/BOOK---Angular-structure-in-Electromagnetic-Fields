# Chapter 1 — Theorem 1.5 final proof audit

**Date:** 2026-11-19  
**Location:** §1.1.4, `thm:ch1.exterior-uniqueness`, PDF pp. 21–24.

## Theorem scope (preserved)

- Connected exterior \(\Omega_{\mathrm{ext}}=\mathbb{R}^3\setminus\overline{\mathcal{O}}\), homogeneous vacuum, \(\omega>0\), \(\exp(+j\omega t)\).
- Partition \(\Gamma=\Gamma_{\mathrm{PEC}}\cup\Gamma_{\mathrm{PMC}}\cup\Gamma_Z\); scalar passive \(Z_s\) with \(\Re Z_s>0\) on \(\Gamma_Z\).
- Class A impressed sources; same interface and radiation selection.
- **Uniqueness only** — existence/continuous dependence not claimed.

## Field class (Approach A — classical)

Theorem statement now requires **piecewise smooth** \((\mathbf E,\mathbf H)\) up to \(\Gamma\) with **\(L^2\) tangential traces** on each boundary portion, sufficient for the complex Poynting identity and radiation asymptotics used in the proof. Finite local \(L^2\) energy alone is **not** claimed sufficient.

## PEC / PMC correction

| Boundary | Homogeneous data on difference fields | Tangential power of \(\mathbf S_\Delta\) |
|----------|--------------------------------------|----------------------------------------|
| PEC | \(\Delta\mathbf E_t=0\) only | \(\Re\{\hat{\mathbf n}_{\mathrm{ext}}\cdot\mathbf S_\Delta\}=0\) |
| PMC | \(\Delta\mathbf H_t=0\) only | same |

Proof explicitly states neither condition forces the **other** tangential component to vanish.

## Impedance sign chain

\(\hat{\mathbf n}_{\mathrm{ext}}=-\hat{\mathbf n}_{\mathrm{body}}\); passive \(Z_s\) gives \(P_{\mathrm{abs}}\ge 0\) via Eqs. `eq:ch1.impedance-boundary-power`, `eq:ch1.impedance-exterior-normal-flux` — re-derived under \(+\mathrm{j}\omega t\) in manuscript.

## Complex Poynting identity

Difference-field form in Eqs. (1.38)–(1.41) used with conjugation appropriate to \(\exp(+j\omega t)\); impressed source term vanishes for homogeneous difference fields.

## Far field and \(\mathcal P_\infty\)

\(\Delta\mathbf E_t\sim R^{-1}e^{-jk_0 R}\mathbf E_\infty\); \(\mathcal P_\infty=\dfrac{1}{2\eta_0}\int |\mathbf E_\infty|^2\,\mathrm d\Omega\ge 0\); \(R^2\) surface Jacobian cancels \(R^{-2}\) intensity — stated in proof route.

## Vector spherical waves

Outgoing \(\mathbf M_{\ell m}^+=h_\ell^{(2)}\mathbf M_{\ell m}\), \(\mathbf N_{\ell m}^+=k_0^{-1}\nabla\times\mathbf M_{\ell m}^+\), \(\ell\ge 1\). Orthogonality block `eq:ch1.vsw-mn-orthogonality` cites Stratton §7.11. Far-field annihilation ⇒ all \((a_{\ell m},b_{\ell m})=0\) on admissible \(S_R\).

**Qualification:** Full measure-theoretic completeness proof not reproduced in chapter; **CLOSED WITH QUALIFICATION**.

## Rellich continuation

Step (iii) invokes **unique continuation** for time-harmonic Maxwell fields in homogeneous exterior with outgoing selection — cited Sommerfeld/Harrington. Scalar Helmholtz Rellich is **not** presented as a substitute without vector argument.

**Qualification:** **CLOSED WITH QUALIFICATION** — hypotheses match cited monograph-level statements, not a full self-contained Rellich proof in Ch. 1.

## Colton–Kress–Hsiao

Related impedance BVP literature; **not** claimed as line-by-line proof. Conversion table in `CHAPTER1_SOURCE_CONCORDANCE_20261119.md`.

## Overall theorem status

**CLOSED WITH QUALIFICATION** — uniqueness argument is internally consistent under stated classical regularity and cited VSW/Rellich infrastructure; existence and weak-\(H(\mathrm{curl})\) formulation remain outside scope.