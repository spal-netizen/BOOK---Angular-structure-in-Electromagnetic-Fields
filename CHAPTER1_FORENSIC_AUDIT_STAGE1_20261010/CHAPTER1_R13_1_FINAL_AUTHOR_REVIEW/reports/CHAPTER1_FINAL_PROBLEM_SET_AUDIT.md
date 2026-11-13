# Chapter 1 final problem-set audit

**Pass:** classical illustration + problems (2026-11-13)  
**Source:** `build_package/ch01-problems.tex`  
**Section:** §1.8 (`sec:ch01.8`)

## Author-identified defects — disposition

| Item | Issue | Disposition |
|------|-------|-------------|
| **Problem 1(c)** | Referred to $\tau_{\hat{\mathbf u}}(V_m)$; Eq. (1.78) uses $V_{\mathrm{A}}$ | **Closed** — exercise now uses $V_{\mathrm{A}}$ and distinguishes $V_m$, $\mathcal{V}_{\mathrm{vac}}$ |
| **Problem 3(c)** | Directed integration of lossless (1.39) for lossy media | **Closed** — lossless chain (1.38)–(1.39) vs lossy real part of (1.40) separated |
| **Problem 9(d)** | $r=0.5\,\mathrm{m}$ gave $kr=\pi$ (radiative), not near-zone | **Closed** — $r_1=0.05\,\mathrm{m}$, $r_2=5\,\mathrm{m}$; $kr_1=0.1\pi$, $kr_2=10\pi$; ratios $\approx32.3$ and $\approx3.23\times10^{-5}$ verified independently |
| **Editorial** | `[Chapter 2]` / `[Chapter 3]` in problems | **Closed** — removed; forward material now stated as derivations or definitions |

## Numerical verification (Problem 9d)

$f=300\,\mathrm{MHz}$, $\lambda_0=1\,\mathrm{m}$, $k=2\pi\,\mathrm{rad/m}$:

- $kr_1=0.31416$, $|P_{\mathrm{reac}}|/P_{\mathrm{rad}}=1/(kr_1)^3\approx 32.25$
- $kr_2=31.416$, $|P_{\mathrm{reac}}|/P_{\mathrm{rad}}=1/(kr_2)^3\approx 3.23\times10^{-5}$

Narrative §1.6.4 aligned to the same radii and ratios.

## Structure

Ten problem groups retained; subparts rewritten for derivation/computation/synthesis. No separate answer key added (not part of existing book format).

## Residual limitation

Independent written solutions for every subpart were checked for numerics and cross-references; a full student-facing solutions manual was **not** created.
