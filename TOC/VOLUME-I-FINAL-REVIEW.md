# Volume I Final TOC Review — Chapters 1–4 (Sign-Off)

**Status:** APPROVED FOR WRITING  
**File:** `volume-I-ch01-04-FINAL.txt` (replaces all prior Vol. I TOC versions)  
**Subsection count:** 171 (identical to original Ch. 1–4 outline)  
**Conventions:** \(e^{-j\omega t}\), SI  

---

## 1. Completeness vs original (no missing concepts)

| Chapter | Original subs | Final subs | Verdict |
|---------|---------------|------------|---------|
| 1 | 32 | 32 | Complete |
| 2 | 45 | 45 | Complete |
| 3 | 48 | 48 | Complete |
| 4 | 46 | 46 | Complete |
| **Total** | **171** | **171** | **No deletions** |

**Every original topic is retained**, including: rank deficiency & spectral compression (§2.1.3), Fredholm structure (§2.6.3), rigged Hilbert spaces (§3.1.4), Wigner \(D\)-matrices (§3.2.4), Debye potentials (§3.3.4), LPS / Kolmogorov n-width (§4.8.4), spin–orbit limits (§1.4.5), and all four [FIG+PROB] example blocks per chapter.

---

## 2. Recursion / repetition — how the final TOC prevents it

| Problem in draft definitive file | Correction in FINAL |
|----------------------------------|---------------------|
| §2.0.x wrongly tagged `[USE]` (Ch. 2 intro) | §2.0 = narrative only; **no** `[USE]` on 2.0.1–2.0.3 |
| §2.7.x wrongly tagged `[DEFER]` | §2.7 = **[HOME]** for NR sources (Ch. 4 **uses**, does not redefine) |
| §3.7.x wrongly tagged `[DEFER]` | §3.7 = **[HOME]** for discrete/continuous spectra |
| §4.7.1–2 duplicate §2.7 | §4.7.1–2 = **[USE §2.7]**; §4.7.3–4 = **[HOME]** realizability |
| §1.2 title truncated to “Angular Structure” | Restored: **Angular Structure of Electromagnetic Fields** |
| Compactness in §2.1.3 and §2.6.3 | §2.1.3 **[HOME]**; §2.6.3 **[USE §2.1.3]** + Fredholm **[HOME]** |
| Evanescent split §2.2.4 vs §2.5.4 | §2.2.4 **[HOME]**; §2.5.4 **[USE §2.2.4]** |
| Gauge in §1.4 vs §3.9 | §1.4 **[HOME]**; §3.9.1–2 **[USE §1.4]** (eigenfield context) |
| Reactive/radiative §1.2.4 vs §1.6.4 | §1.2.4 **[HOME]**; §1.6.4 **[FIG+PROB][USE §1.2.4]** |

**Rule enforced:** `[DEFER]` appears **only** on §1.7, §2.11, §3.11, §4.11 subsections (forward map lists).

---

## 3. Expert ordering (why this sequence is correct)

### Chapter 1 — Language before operators
`Scope → Maxwell + conservation → angular structure → rotations → gauge → measurement → examples → summary`  
*Gauge before measurement so observables in §1.5 are gauge-aware.*

### Chapter 2 — Operators before representations
`Function spaces → time/frequency Maxwell → Green → radiation condition → radiation integrals → operator spectrum → NR null space → reciprocity → angular action on spectra → examples → summary`  
*Sommerfeld (§2.4) before radiation integrals (§2.5); NR sources (§2.7) before angular spectra (§2.9).*

### Chapter 3 — Representations after radiation operators
`Hilbert space → AM operators & SO(3) → vector Helmholtz → VSH & eigenfields → normalization → completeness & symmetry breaking → spectrum types → basis changes → gauge interpretation → examples → summary`  
*VSH definitions (§3.4.1) before coupling in Ch. 4; Helmholtz (§3.3) before VSH (§3.4).*

### Chapter 4 — Realizability closes Volume I
`Intro → admissible sources → equivalence → finite-support operators → bandlimits → eigenfield coupling → truncation & SV decay → null-space/reconstruction [USE Ch.2] → LPS concentration → physical consequences → examples → summary → bridge to Vol. II Ch. 5`  

---

## 4. Mandatory mathematics per chapter (checklist when writing)

### Ch. 1
- Maxwell (differential + integral), constitutive relations, phasor form  
- Poynting vector, Maxwell stress tensor, momentum & **angular momentum** densities  
- Active/passive rotation laws for vectors, tensors, dyads  
- Lorenz gauge, gauge transformation, helicity, spin–orbit decomposition limits  

### Ch. 2
- Domain/range/adjoint, compactness, rank deficiency  
- Time–frequency equivalence, causality  
- Dyadic \(\mathbf{G}(\mathbf{r},\mathbf{r}')\), retardation, distributional sources  
- Sommerfeld condition, uniqueness theorem  
- Radiation integrals, near/intermediate/far regimes  
- Spectral decomposition, Fredholm alternative  
- NR source conditions, reciprocity bilinear form  
- Near-to-far angular spectrum filter  

### Ch. 3
- \(\mathcal{H}_\mathrm{rad}\), inner product, rigged Hilbert space (Gelfand triple)  
- \(\mathbf{J}^2\), \(\mathbf{J}_z\), commutation, simultaneous eigenstates  
- Wigner \(D^l_{mm'}\), SO(3) Clebsch–Gordan coupling  
- Vector Helmholtz, Debye potentials, \(M_{\\ell m}, N_{\\ell m}\) **definitions**  
- Orthogonality, completeness, resolution of identity  
- Continuous-spectrum normalization, density of states  
- Plane-wave \(\leftrightarrow\) spherical conversion  

### Ch. 4
- Impressed \(\mathbf{J}_\mathrm{imp}\), passivity, causality, finite support  
- Love / Huygens equivalence  
- Source \(\to\) radiation \(\to\) field operator composition  
- SVD, singular-value decay, effective rank  
- Fourier–angular duality, bandlimit on \(\ell\)  
- Coupling integrals, selection rules  
- LPS concentration, \(n\)-width, mode-count scaling laws  

---

## 5. [FIG+PROB] obligation (all 16 example subsections)

Each requires: **Problem statement | Schematic figure + caption | Full derivation | Physical interpretation | One forward link.**

| Section | Topic |
|---------|--------|
| §1.6.1–4 | Conservation; fake AM transport; gauge; reactive vs radiative |
| §2.10.1–4 | Compactness; NR source; evanescent suppression; structured source |
| §3.10.1–4 | Eigenfield construction; VSH orthogonality; normalization; mode mixing |
| §4.10.1–4 | Max \(\ell\) on aperture; non-accessible mode; near/far truncation; scaling |

---

## 6. Professor sign-off

| Criterion | Met? |
|-----------|------|
| No missing concepts vs original | **Yes** |
| No TOC-level recursion (HOME/USE assigned) | **Yes** |
| Expert subsection order | **Yes** |
| Forward-only (DEFER only in §X.11/§1.7) | **Yes** |
| Ready to begin §1.0.1 drafting | **Yes** |

**Begin writing from:** `volume-I-ch01-04-FINAL.txt` and `00-NOTATION.md`.
