# Chapter 1 — comprehensive classical correction register

**Purpose:** Single author-facing document for the classical-litmus standard (timeless advanced EM textbook contribution).  
**Author benchmark (Pass 7):** `VOLUME_I_RELEASE/CHAPTER1_BENCHMARK_20261118.pdf` (68 pp; identical to `CHAPTER1_CLASSICAL_CORRECTION_20261118.pdf` on 2026-11-18)  
**Legacy spine:** `CHAPTER1_BENCHMARK_A05B9CCE.pdf` (figure-role reference only)  
**Working manuscript:** `latex/ch01.tex`, `latex/ch01-problems.tex`, `latex/ch01-problems-solutions.tex`  
**Build:** `latex/build-ch01-review.ps1` → correction + benchmark copies in `VOLUME_I_RELEASE/`  
**Tag:** `chapter1-benchmark-20261118-pass7-timeless-voice`  
**Pass 8 (2026-11-18) — literary + proof density + TR-064 page pins:** Section bridges §1.0→§1.8; expanded §1.1.3 uniqueness (lossless $\Re\nabla\cdot\mathbf{S}_\Delta$, far-zone Poynting asymptotics Eqs.~`uniqueness-far-*`); charge-continuity derivation step; Chu Remark with MIT TR-064 printed pp.~7--9 and JAP pp.~1168--1170; §1.7 synthesis list; `CHAPTER1_BENCHMARK_PASS8_20261118.pdf`.  
**Pass 7 (2026-11-18) — P0+P1:** A4 audit doc tied to benchmark; Remark `rem:ch1.chu-tr064-concordance` (Chu JAP + TR-064 Eqs.~(7)–(12), Fig.~3, McLean ladder); §1.2.0–§1.2.3 continuous Stratton-style prose (no `\emph{Problem}/\emph{Law}/\emph{Result}`); §1.1 narrative ~15% compression; removed `addtocounter{equation}{-1}` duplicate equation hyperrefs; canonical labels (`eq:ch1.poynting-complex`, power-balance, tensor rotation); **clean** `main-ch01-only.log` (no undefined / multiple `\label`).  
**Pass 6:** Ledger→balance vocabulary; §1.2.0–§1.2.1 rhythm prep.  
**Pass 5 (2026-11-18):** Full `references.bib` keys for ch01 log; §1.3 subsubsection openers; Fig.~1.30 pole **0**; Ch.2 USE pointers; zero undefined cites in ch01-only log.  
**Pass 4:** Figs 1.1/1.14; §1.2–§1.3 openings; §1.1.5 split; Beth concordance.  
**Pass 3:** symbol table; §1.0–§1.8 bridges; Problem 1(f).

**Status legend:** ✅ Applied in source | 📋 Specified below (paste-ready) | ⏳ Requires TikZ/print pass

---

## Executive summary (honest litmus)

| Criterion | After pass 7 |
|-----------|----------------|
| Physical question → mathematics | ✅ Beth material vs vacuum; Beth + Chu concordance remarks |
| Definitions before use | ✅ Extended symbol table; §1.1.5 split headings |
| Derivation + interpretation | ✅ Beth (2)(3)(6); Chu TR-064 map (secondary-text level); Ch.2 Green USE |
| Figures indispensable | ✅ 1.1, 1.14 TikZ; 1.30 locked; A4 audit doc (author sign-off open) |
| Progressive single argument | ✅ §1.2–§1.3 continuous prose; §1.1 trim without theorem drop |
| Textbook voice (Stratton/Harrington) | ✅ P–L–R folded; hyperref hygiene; **author literary A−→A target** after independent read |
| Chu peer bar | ✅ TR-064 concordance remark; **MIT DSpace page pin still human gate** |
| Problems + solutions | ✅ §1.8 + hints/solutions (3(d), 7(b)–(d)) |

**Litmus verdict:** Chapter 1 is **author-review benchmark ready** (`CHAPTER1_BENCHMARK_20261118.pdf`). Machine build: **68 pages**, **zero** undefined refs/cites and **no** duplicate equation-label errors in `main-ch01-only.log`. Remaining gates for “timeless shelf” claim: **author A4 print** (Figs. 1.1, 1.14, 1.30); optional **MIT TR-064 PDF page authentication**; **full Volume I `main.tex` build** after Ch.2–4 LaTeX cleanup.

---

# Track (A) — §1.0–§1.2 narrative and symbols

## A.1 ✅ Applied — Progressive spine (§1.0, after Fig. 1.2)

Inserted one paragraph tying §1.0 → §1.6 (see `ch01.tex` after Fig. `master-philosophy`).

## A.2 ✅ Applied — Principal symbol table

**Location:** `\subsection{Principal symbols and SI conventions}` / `\label{sec:ch01.0.symbols}` immediately before `\section{Maxwell Theory...}`.

**If reverting:** Remove subsection; problems intro still valid without table ref.

## A.3 📋 Replacement — §1.0 opening (optional tightening for Griffiths pacing)

**Find (first sentence block):** Opening through “That distinction---between how a field is *organized*...”

**Replace with:**

> Circularly polarized microwave radiation falls on a quartz wave plate suspended on a fine fiber. The plate turns: the suspension records mechanical torque, not a phase diagram on a screen \cite{beth1936}. Inside the birefringent crystal the load torque density is $\boldsymbol{\tau}=\mathbf P\times\mathbf E$, because $\mathbf E$ and $\mathbf P$ need not be parallel in an anisotropic dielectric \cite{beth1936}. At the crystal faces, net electromagnetic angular-momentum flux balances the mechanical torque; vacuum Maxwell stress on a closed control surface closes the field-side budget but does not replace $\mathbf P\times\mathbf E$ in the interior \cite{beth1936,stratton1941}.
>
> The chapter keeps three ideas distinct: *angular organization* of $(\E,\H)$ on a chart (not a conserved quantity by itself); angular momentum *associated* with a declared volume under the balances of §1.1; and signed *transport* $\boldsymbol{\Phi}_{J,\mathrm{out}}$ across a closed surface when the stress integral is well posed \cite{stratton1941,beth1936}.

(Status: **✅ applied** pass 2 — `ch01.tex` §1.0 opening.)

## A.4 ✅ Applied — §1.1 entry bridge

Existing paragraph at `\label{sec:ch01.1}` already states three-level separation → Maxwell centre pair.

## A.5 ✅ Applied — §1.1.2 Green singular point (caption + one sentence)

**In body after Eq. (scalar Green):** add immediately:

> The $1/(4\pi R)$ strength is fixed by $\nabla^2(1/R)=-4\pi\delta(\mathbf{r}-\mathbf{r}')$ in three dimensions; any other prefactor would violate charge--current consistency in the retarded potential representation \cite{jackson1999,stratton1941}.

**In `fig:ch1.green-function-seed` caption:** require explicit labels $R=|\mathbf{r}-\mathbf{r}'|$, outgoing $e^{-\jj k_0 R}$, and singular point at $\mathbf{r}'$.

## A.6 Equation fixes (§1.0–§1.2)

| Eq. label | Issue | Action |
|-----------|--------|--------|
| `eq:ch1.energy-class` | Reader may confuse with physical energy | ✅ prose clarifies $L^2$ test vs $u$ |
| `eq:ch1.green-defining` | Singular point | ✅ passK bridge derives $g=1/(4\pi)$ |
| `eq:ch1.ex61-vsh` | Removed with modal trim | ⚠️ No remaining refs; do not restore without Ch.~2 lock |

## A.7 Prose fix ✅ Applied

- Torque route: vacuum-shell sentence + “At harmonic steady state…” (§1.1.5 area).

---

# Track (B) — §1.4–§1.6 modal trim

## B.1 ✅ Applied — §1.4 section opener

Shortened gauge/helicity/duality framing (removed ladder tone).

## B.2 ✅ Applied — Fig. 1.20 gauge sketch

Added $\phi'=\phi-\jj\omega\chi$ and $+\nabla\chi$ annotation on TikZ panel.

## B.3 ✅ Applied — §1.6.1 Hansen/VSH excision

Removed displayed `eq:ch1.ex61-vsh` and merged remarks into single `rem:ch1.hansen-flux-deferred`. **Authored transport law:** Eqs. `ex61-power-def`, `ex61-flux-from-stress` only.

## B.4 ✅ Applied — §1.6.2 modal estimate disclaimer (one sentence)

**After** Eq. `ex62-channel-sum`:

> Eq.~\eqref{eq:ch1.ex62-channel-sum} is an open-aperture *estimate* for uncoupled paraxial components; a senior reader should confirm any claim with the closed-surface stress integral on the completed $(\E,\H)$ solution \cite{stratton1941,harrington2001}.

## B.5 📋 Replacement — §1.6.1 Beth scales (clarify experiment vs ideal plane wave)

**After** Eq. `hwp-torque-magnitude`:

> Eqs.~\eqref{eq:ch1.cp-spin-flux-magnitude} and~\eqref{eq:ch1.hwp-torque-magnitude} apply to ideal uniform circular polarization and half-wave reversal scales in vacuum; Beth's measured torque uses the multi-pass quartz stack of Fig.~\ref{fig:ch1.beth-schematic} and material $\mathbf P\times\mathbf E$ inside the plate \cite{beth1936}.

(Status: partially present in prose; paste tightens redundancy.)

## B.6 Remove from reader-facing path (already trimmed)

- Modal $(m+\sigma)P/\omega$ as theorem → confined to `rem:ch1.m-plus-sigma` and Problem 8(b).

---

# Track (C) — Figure table 1.1–1.30 vs benchmark PDF

**Ordering:** As numbered in `CHAPTER1_TEXTBOOK_BATCH_V_20261118.pdf` / classical build (~60 pp).  
**Benchmark:** `CHAPTER1_BENCHMARK_A05B9CCE.pdf` (figure *role* parity, not pixel identity).

| Fig. | Label | Role (physical argument) | vs benchmark | Spec / action |
|------|--------|---------------------------|--------------|----------------|
| 1.1 | `three-radiation-consequences` | Triptych: momentum, CP torque, counter-rotating flux | Enhanced | ✅ $\mathbf P\times\mathbf E$ vs vacuum stress; A4 doc |
| 1.2 | `master-philosophy` | Reactive vs radiative shells | Match | ✅ VolIPhysReactiveVsRadiative |
| 1.3 | `three-level-hierarchy` | Source → $(\E,\H)$ → chart | Match | ✅ caption stresses chart ≠ source |
| 1.4 | `wp-matched-aperture` | Realizable vs rim-only excitation | Match | ✅ |
| 1.5 | `wp-gaussian-waist` | Domain choice before flux | Match | ✅ schematic-only caption |
| 1.6 | `vacuum-closure-map` | $\varepsilon_0,\mu_0,\eta_0,c$ closure | Enhanced | ✅ E⊥H, SI hints; ⏳ print arrow handedness |
| 1.7 | `green-function-seed` | Outgoing $G$, retarded map | Enhanced | ✅ $\delta$ sing., outgoing arrow, caption |
| 1.8 | `wp-solenoidal-loop` | Small loop, $k_0 b\ll1$ | Match | ✅ |
| 1.9 | `wp-te10-waveguide` | Guided vs radiated power | Enhanced | ✅ $\E_y$, $\H_x$, $+z$, PEC |
| 1.10 | `stress-traction-element` | $\mathbf{t}=\Tavg\cdot\hat{\mathbf{n}}$ | Enhanced | ✅ outward $\hat{\mathbf{n}}$, N\,m$^{-2}$ |
| 1.11 | `plane-wave-handedness` | $\E,\H,\mathbf{k}$ triad | Match | ✅ |
| 1.12 | `wp-reactive-vs-radiative` | $kr$ shells 0.5, 3, 10 | Match | ✅ |
| 1.13 | `momentum-angular-geometry` | $\mathbf{g}$, $\mathbf{j}$, $\Mavg$ chain | Match | ✅ wide macro |
| 1.14 | `wp-torque-balance-surface` | Torque vs flux on shell | Enhanced | ✅ $\boldsymbol{\Phi}_{J,\mathrm{out}}$ arrows + eq refs |
| 1.15 | `signature-rotation-duality` | Active vs passive rotation | Match | ✅ |
| 1.16 | `phase-vs-transport-sketch` | Phase ≠ signed transport | Match | ✅ |
| 1.17 | `radial-field-zones` | $r^{-3},r^{-2},r^{-1}$ zones | Match | ✅ |
| 1.18 | `source-vs-chart-rotation` | Source vs chart vs appearance | Match | ✅ |
| 1.19 | `origin-shift-torque` | $\Delta\mathbf{r}\times\mathbf{F}$ | Match | ✅ |
| 1.20 | `gauge-same-field` | Gauge transform, same $\E,\H$ | Enhanced | ✅ panels (a–c) vector + scalar map |
| 1.21 | `helicity-cp-wave` | CP winding about $\mathbf{k}$ | Match | ✅ |
| 1.22 | `spin-orbit-decomposition` | Convention split of $\mathbf{j}_{\mathrm{em}}$ | Match | ✅ |
| 1.23 | `measurement-surface-readout` | Flux, traction, $\E_t$ on $\Gamma$ | Match | ✅ |
| 1.24 | `ex61-beth-helical-sketch` | Dipole $m=0$ vs Beth CP | Match | ✅ caption distinguishes dipole/Beth |
| 1.25 | `beth-schematic` | Multi-pass Beth apparatus | Match | ✅ VolIPhysBethSchematic |
| 1.26 | `open-plane-vs-closed` | $S_o$ estimate vs $\Gamma_R$ exact | Match | ✅ |
| 1.27 | `ex62-counter-rotating-aperture` | Four-lobe $|E_t|^2$, $P_+=P_-$ | Enhanced | ✅ four radial lobes |
| 1.28 | `ex63-gauge-volume-sketch` | Coulomb vs Lorenz on $V_g$ | Enhanced | ✅ $\phi_C,\phi_L$ labels |
| 1.29 | `dipole-three-zones` | Near/reactive/far shells | Match | ✅ |
| 1.30 | `dipole-radiation-pattern` | $D(\theta)\propto\sin^2\theta$ | Match | ✅ $\theta$ labels (R13 audit) |

**Figure reconstruction spec (priority ⏳):**

1. **1.7** — Mark $\mathbf{r}'$, dashed $R$, outgoing phase arrow on ray to $\mathbf{r}$.  
2. **1.9** — Cross-section with $\E_y$ sinusoid on broad wall, $\H_x$ on narrow wall (Harrington Fig. style).  
3. **1.10** — Material cube, outward $\hat{\mathbf{n}}$, traction arrow $\mathbf{t}$ on face.  
4. **1.20** — Two-panel: (a) $\mathbf{A}\to\mathbf{A}+\nabla\chi$; (b) $\phi\to\phi-\jj\omega\chi$ with shared $\E$ vector.

---

# Exercises — alignment matrix

| Prob. | Established result | Status |
|-------|-------------------|--------|
| 1 | Poynting split, momentum, torque routes | ✅ refs §1.1; table ref added |
| 2 | Green, continuity, Fraunhofer phase | ✅ |
| 3 | Uniqueness lossless/lossy | ✅ Theorem + lossy identity |
| 4–6 | Phase, Hankel, VSH | ✅ 6(c) axisymmetric $\ell=1$ |
| 7 | Rotation / helicity / counter-rotating | ✅ 7(b) Remark `m-plus-sigma` |
| 8–11 | Aperture, dipole 300 MHz, Chu $Q$ | ✅ 8(c) reactive ratio caveat |

**✅ Problem 1(f)** applied (pass 3): dimensions of $\boldsymbol{\Phi}_{J,\mathrm{out}}$ and $\Mavg\cdot\hat{\mathbf{n}}$.

---

# Build and review artifacts

```powershell
cd latex
.\build-ch01-review.ps1
```

Outputs:

- `VOLUME_I_RELEASE/CHAPTER1_BENCHMARK_20261118.pdf` (**Pass 7 author benchmark**)
- `VOLUME_I_RELEASE/CHAPTER1_CLASSICAL_CORRECTION_20261118.pdf` (primary review alias)
- `VOLUME_I_RELEASE/CHAPTER1_TEXTBOOK_BATCH_V_20261118.pdf` (batch alias)
- `VOLUME_I_RELEASE/CHAPTER1_TEXTBOOK_REVIEW_20261118.pdf`

---

# Author sign-off checklist (classical litmus)

- [ ] Open §1.0 → §1.1 without undefined symbols (Table 1.1)
- [ ] Reproduce Green $1/(4\pi R)$ singularity from passK example
- [ ] Reproduce exterior uniqueness proof outline §1.1.3
- [ ] Explain counter-rotating example with Eqs. 1.62-* and Fig. 1.27
- [ ] Reproduce dipole $D(\theta)$ and 300 MHz shell numbers Prob. 9–10
- [ ] Print audit figures 1.7, 1.9, 1.10, 1.20 at A4

When all boxes pass, declare Chapter 1 **classical-contribution ready** for Volume I lock.

---

# Remaining steps — Harrington / Jackson / Griffiths / Stratton / Chu / Balanis / Felsen bar

| Priority | Work | Reference standard | Why it still matters |
|----------|------|-------------------|----------------------|
| ~~**P1**~~ | ~~§1.2–§1.3 continuous prose (Pass 7)~~ | Stratton completeness | ✅ Folded P–L–R; §1.1 ~15% trim |
| ~~**P1**~~ | ~~Extend symbol table~~ | — | ✅ Pass 3 |
| ~~**P1**~~ | ~~Problem 1(f)~~ | — | ✅ Pass 3 |
| ~~**P1**~~ | ~~§1.2–§1.3 voice~~ (partial) | — | ✅ bridges §1.1→§1.2, §1.5, §1.7 Ch.2 inheritance |
| **P2** | Fig. 1.1 triptych: label Beth *material* torque vs vacuum stress explicitly at print scale | Beth primary source | Only figure that opens the physical question |
| **P2** | Fig. 1.14 torque-balance: tie arrows to Eqs. torque–flux with one in-body sentence | Harrington diagram discipline | |
| **P2** | §1.6.1 Beth scales: paste B.5 paragraph after `hwp-torque-magnitude` | Beth experiment vs ideal plane wave | Reduces over-interpretation of $P/\omega$ |
| **P3** | §1.7 summary: one-page “what Chapter 1 established / what Ch. 2 inherits” (no new math) | Collin/Balanis chapter bridges | Progressive closure at chapter end |
| **P3** | Bib equation-concordance: Beth eqs. (2)(3)(6) ↔ displayed labels | Jackson citation hygiene | |
| **P3** | Full-book consistency: Ch. 2 must USE `eq:ch1.scalar-green-outgoing` by `\ref` only | Forward-map lock | |
| **P4** | A4 print audit Figs. 1.1, 1.14, 1.30 at 100% | Internal figure audit | “Indispensable figure” test |
| **P4** | Optional: split §1.1.5 angular balance into “instantaneous” vs “cycle-averaged” subheadings | Stratton/Chu clarity | Longest trust gap for new readers |

**Comparison note (fair, not one-size-fits-all):** Jackson compresses multipoles; Harrington expands BVP detail; Griffiths privileges intuition before formality; Stratton is the completeness anchor; Chu bounds finite antennas; Balanis connects devices; Felsen emphasizes high-frequency radiation. **This chapter’s unique voice** (Beth + angular transport vs modal appearance) is now structurally sound; remaining work is **uniform subsection rhetoric** and **print-verified figures**, not more physics.