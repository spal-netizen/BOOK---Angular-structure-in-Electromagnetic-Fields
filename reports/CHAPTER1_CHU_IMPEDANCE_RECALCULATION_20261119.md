# Chapter 1 — Chu spherical TM modal impedance recalculation

**Date:** 2026-11-19  
**Manuscript definition** (`eq:ch1.chu-Z-TM-normalized`):

\[
z_n(p)=j\,\frac{\dfrac{d}{dp}\bigl[p\,h_n^{(2)}(p)\bigr]}{p\,h_n^{(2)}(p)},\qquad
Z_n^{\mathrm{SI}}=\eta_0 z_n.
\]

Outgoing branch \(h_n^{(2)}\), consistent with \(\exp(+j\omega t)\) and manuscript Hankel selection.

## \(n=1\) explicit function

\[
h_1^{(2)}(p)=e^{-jp}\,\frac{j-p}{p^2}.
\]

Let \(u(p)=p\,h_1^{(2)}(p)=e^{-jp}(j-p)/p\).

### Analytic derivative (verified)

\[
\frac{d u}{d p}=e^{-jp}\left(\frac{j}{p}-\frac{j-p}{p^2}-\frac{j-p}{p}\right).
\]

At \(p=0.5\) (independent Python/cmath, finite difference, and symbolic substitution agree):

| Quantity | Value |
|----------|--------|
| \(\dfrac{d[p h_1^{(2)}]/dp}{p h_1^{(2)}}\) | \(-1.6-j0.2\) |
| \(z_1(0.5)=j\times(\cdots)\) | **\(0.20-j1.60\)** |
| \(\eta_0\) | \(376.730\ldots\,\Omega\) |
| \(Z_1^{\mathrm{SI}}(0.5)\) | **\(75.35-j602.77\,\Omega\)** |

**Rejected obsolete values:** \(0.57+j0.40\), \(216+j149\,\Omega\) (incompatible with displayed formula and \(h_1^{(2)}\) branch).

## Physical interpretation

- **Real part** \(\approx 0.20\,\eta_0\): small resistive component of the normalized modal radial impedance at \(ka=0.5\).
- **Imaginary part** negative at \(\exp(+j\omega t)\): predominantly **capacitive** reactive exchange for this normalized series in the reactive-dominant shell (interpret against cycle-averaged reactive power discussion in §1.6.4).

## \(Q_{\mathrm{LB}}=\dfrac{1}{(ka)^3}+\dfrac{1}{ka}\)

Retained as **Chu ideal modal lower bound** for electrically small \(ka\); distinguished in prose from finite-shell reactive-power ratios (`eq:ch1.chu-q-lower-bound`).

## Manuscript location

§1.6.4, Eq. (1.175) discussion paragraph (~p. 64 PDF): updated numerics.

## Regression

`grep` on active `ch01.tex`, `ch01-problems*.tex`: no `0.57`, no `216+j149`.

**Status:** **CLOSED**