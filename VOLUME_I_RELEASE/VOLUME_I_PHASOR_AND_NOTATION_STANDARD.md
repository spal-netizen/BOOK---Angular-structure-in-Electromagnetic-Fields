# Volume I — Phasor and Notation Standard (Stage B)

**Authority:** Frozen Chapter 1 benchmark  
`CHAPTER1_FORENSIC_AUDIT_STAGE1_20261010/CHAPTER1_R13_0_SOURCE_VERIFIED_CANONICAL/source/CHAPTER1_R13_0_WORKING_CANDIDATE.tex`  
**Release tag:** `chapter1-benchmark-20261114-a05b9cce` (commit `aa5bfbe`)  
**Effective:** Chapters 2–4, volume front matter, and shared `latex/macros.tex` (Chapter 1 benchmark tree unchanged).

---

## 1. Time dependence and frequency-domain substitution

**Benchmark prose** (working candidate, §1.1 development): harmonic fields use \(\exp(+\mathrm{j}\omega t)\).

**Phasor display (Volume I macro):**

\[
\mathbf{f}(\mathbf{r},t)=\mathrm{Re}\{\mathbf{f}(\mathbf{r})\,\mathrm{e}^{+\mathrm{j}\omega t}\},\qquad \omega>0\ (\mathrm{rad/s}).
\]

**Substitution rule** (derived from \(\partial_t \mathrm{e}^{+\mathrm{j}\omega t}=+\mathrm{j}\omega\,\mathrm{e}^{+\mathrm{j}\omega t}\)):

\[
\frac{\partial}{\partial t}\longrightarrow +\mathrm{j}\omega,\qquad
\frac{\partial^2}{\partial t^2}\longrightarrow -\omega^2
\]

on phasors \(\mathbf{E},\mathbf{H},\mathbf{J}_{\mathrm{imp}},\rho\).

**Source locations (Ch. 1):** Eq. labels `eq:ch1.maxwell-local` context (lines ~220–228, ~321–323); charge discussion ~270 (phase of \(\mathrm{j}\omega\rho\)).

**Not mechanical:** spatial outgoing phase \(e^{-\mathrm{j}k_0 R}\) in the Green function (below) is **unchanged** under the time-convention lock; it is fixed by Sommerfeld/outgoing selection together with \(+\mathrm{j}\omega t\), not by replacing \(-\mathrm{j}\) with \(+\mathrm{j}\) in \(k\)-space.

---

## 2. Maxwell curl system (vacuum phasor form)

**Benchmark** — `eq:ch1.maxwell-local`:

\[
\nabla\times\mathbf{E}=-\mathrm{j}\omega\mu_0\mathbf{H},\qquad
\nabla\times\mathbf{H}=\mathbf{J}_{\mathrm{imp}}+\mathrm{j}\omega\varepsilon_0\mathbf{E},
\]
\[
\nabla\cdot(\varepsilon_0\mathbf{E})=\rho,\qquad
\nabla\cdot(\mu_0\mathbf{H})=0.
\]

Constitutive vacuum relations: `eq:ch1.vacuum-constitutive` (\(\mathbf{D}=\varepsilon_0\mathbf{E}\), \(\mathbf{B}=\mu_0\mathbf{H}\)).

**Verification:** Signs are read directly from the benchmark TeX; they are **not** obtained by flipping signs relative to \(\exp(-\mathrm{j}\omega t)\) textbooks. Faraday and Ampère–Maxwell rows match Stratton/Jackson **given** \(\mathrm{e}^{+\mathrm{j}\omega t}\).

---

## 3. Charge continuity

**Benchmark** — `eq:ch1.charge-continuity-harmonic`:

\[
\nabla\cdot\mathbf{J}_{\mathrm{imp}}+\mathrm{j}\omega\rho=0.
\]

**Derivation anchor (Ch. 1):** \(\nabla\cdot(\nabla\times\mathbf{H})=0\) applied to Ampère–Maxwell plus Gauss's law (`eq:ch1.maxwell-local`).

**Integral form:** `eq:ch1.continuity-integral`, `eq:ch1.global-charge-compatibility`.

**Source admissibility (regular class):** `eq:ch1.source-charge-continuous` (\(\mathrm{L}^2\) support, \(\nabla\cdot\mathbf{J}_{\mathrm{imp}}+\mathrm{j}\omega\rho=0\) in \(\mathcal{D}'(\Omega)\)).

---

## 4. Impressed sources and constitutive conventions

- \(\mathbf{J}_{\mathrm{imp}}\): impressed **electric** current density (A/m\(^2\)), phasor amplitude in \(\mathrm{e}^{+\mathrm{j}\omega t}\).
- \(\rho\): charge density (C/m\(^3\)).
- Macro `\Jimp` in `latex/macros.tex`; bold \(\mathbf{E},\mathbf{H}\) without underline (Ch. 1 style).

---

## 5. Outgoing waves, Sommerfeld selection, scalar Green function

**Radiation trace (Ch. 1):** `eq:ch1.radiation-trace-condition` — asymptotic \(\mathbf{E}_{\mathrm{rad}}\sim \mathbf{E}_0(\theta,\phi)\,e^{-\mathrm{j}k_0 R}/R\), \(\mathbf{H}_{\mathrm{rad}}=\eta_0^{-1}\hat{\mathbf{r}}\times\mathbf{E}_{\mathrm{rad}}\); **excludes** incoming \(e^{+\mathrm{j}k_0 R}/R\) branch.

**Free-space scalar Green function (Ch. 2 development, consistent with Ch. 1 outgoing phase):**

\[
G_0(\mathbf{r},\mathbf{r}')=\frac{e^{-\mathrm{j}k_0|\mathbf{r}-\mathbf{r}'|}}{4\pi|\mathbf{r}-\mathbf{r}'|},\quad
k_0=\omega\sqrt{\mu_0\varepsilon_0}.
\]

**Verification status (Stage B):** Outgoing spatial factor \(e^{-\mathrm{j}k_0 R}\) checked against Ch. 1 dipole and radiation-trace discussion; time factor \(\mathrm{e}^{+\mathrm{j}\omega t}\) does **not** reverse this spatial outgoing choice.

---

## 6. Complex Poynting vector and time averages

Ch. 1 uses complex Poynting \(\mathbf{S}=\frac{1}{2}\mathbf{E}\times\mathbf{H}^*\) and cycle-averaged \(\langle\mathbf{S}\rangle\) with the same \(\mathrm{e}^{+\mathrm{j}\omega t}\) convention (`eq:ch1.complex-poynting` region; stress/tensor `eq:ch1.maxwell-stress`).

**Rule:** Conjugation in \(\mathbf{H}^*\) pairs with \(+\mathrm{j}\omega t\); do not copy \(-\mathrm{j}\omega t\) textbook formulas without re-deriving the average.

---

## 7. Spherical coordinates and angular bases

- \((r,\theta,\phi)\), right-handed \((\hat{\mathbf{r}},\hat{\boldsymbol{\theta}},\hat{\boldsymbol{\phi}})\) as in Ch. 1.
- \(Y_\ell^m\): Condon–Shortley phase (defined once §3.4.1 in volume outline).
- \(\mathbf{M}_{\ell m},\mathbf{N}_{\ell m}\): **single HOME definition** in Ch. 3; Ch. 2 cites only.

---

## 8. Units and symbols

SI throughout; \(\varepsilon_0\), \(\mu_0\), \(\eta_0=\sqrt{\mu_0/\varepsilon_0}\), \(k_0=\omega/c\), \(c=1/\sqrt{\varepsilon_0\mu_0}\) as Ch. 1.

---

## 9. Volume I build notes

- **Frozen Ch. 1:** benchmark TeX/PDF under `VOLUME_I_RELEASE/` and forensic canonical path — no edits in Stage B.
- **Editable Ch. 2–4:** `latex/ch02-stage11.tex`, `latex/ch03.tex`, `latex/ch04.tex` and included fragments.
- **Shared macros:** `latex/macros.tex` `\eim` must match this document for integrated builds.

---

*Stage B register v1 — 2026-11-14. Expand Hankel/VSW/dyadic blocks when Ch. 3 eigenfields are re-derived.*