# Batch C — Scientific audit

**Branch:** `volume-i/ch2-4-coordinated-transformation`  
**Start HEAD:** `ae3c260`  
**Chapter 1:** not edited (verify manifest after build).

## 1. Files modified

| File | Changes |
|------|---------|
| `restore-orig-015` | Expanded `prop:ch2.dyadic-curl-curl-green` proof: Lorenz potential, longitudinal/transverse split, `eq:ch2.dyadic-green-ibp`, surface-limit argument. |
| `restore-orig-022` | `prop:ch2.Pirad-vs-Oout`; fixed `eq:ch2.outgoing-radiation-refinement` ($\mathcal{S}_\omega^{(\mathrm{out})}$ vs $\Pi_{\mathrm{rad}}$); figure caption. |
| `restore-orig-023` | Uniqueness proof: transverse vs evanescent flux; removed duplicate evanescent paragraph. |
| `ch03.tex` §3.2.1, §3.4.3 | Commutator from SO(3); inner-product domain paragraph; `thm:ch3.vsh-completeness` narrowed + proof steps. |
| `ch04.tex` §4.4.3, §4.5.2 | `prop:ch4.source-mode-alignment`; removed vignette in §4.5.2. |

## 2. Claim classification (central results)

| Result | Status |
|--------|--------|
| Dyadic Green from curl–curl + Lorenz | **PARTIALLY ESTABLISHED** — IBP and scalar Green cited; columnwise homogeneous check; coincidence/longitudinal mass delegated §2.3.2; not full component-by-component curl verification in proof body. |
| $\mathcal{O}_{\mathrm{out}}$ vs $\Pi_{\mathrm{rad}}$ | **PROVED** (distinct maps, item (3)) under definitions in §§2.0.1, 2.4.2. |
| Exterior uniqueness (thm) | **PROVED UNDER STATED RESTRICTIONS** — homogeneous outgoing + flux limit; homogenous triviality step still invokes retarded uniqueness, not re-derived. |
| VSH orthogonality | **PARTIALLY ESTABLISHED** — proof still step-sketch; space now explicit via `eq:ch3.radiative-inner-product-def`. |
| VSH completeness | **PROVED UNDER STATED RESTRICTIONS** — only on outgoing finite-span closure; infinite series tail convergence deferred Ch.4. |
| `prop:ch4.source-mode-alignment` | **PARTIALLY ESTABLISHED** — proof sketch via reciprocity bilinear; not full operator equality on $\mathcal{J}_{\mathrm{real}}$. |
| `eq:ch4.high-ell-decay` | **RESTRICTED ENVELOPE** (unchanged status; derivation paragraph from Bessel/Hankel scaling). |

## 3. Your four inspection points

1. **Ch.2 dyadic/uniqueness:** Wording strengthened **and** new mathematical steps (`eq:ch2.dyadic-green-ibp`, flux-channel argument). **Not** fully closed: distributional singularity at $\mathbf{r}=\mathbf{r}'$ and full uniqueness of homogeneous exterior problem still cited, not derived in place.

2. **Ch.3 orthogonality/completeness:** Function space **now stated**; completeness theorem **restricted**. Full integral proofs of off-diagonal orthogonality **still open**.

3. **Ch.4 rank/coupling:** Alignment proposition separates $\boldsymbol{\Gamma}_\omega$ from $\boldsymbol{\mathcal{M}}_\omega$; rank **not** derived from coupling integral—only defined operator-side.

4. **Paragraph reconstruction:** Local reconstruction in touched subsections only; **not** chapter-wide pass (Batches D–F remain).

## 4. Remaining critical defects

- Full dyadic coincidence evaluation (§2.3.2).
- Cross-chapter refs to old $\Pi_{\mathrm{rad}}=\mathcal{O}_{\mathrm{out}}\circ\Pi_{\mathrm{prop}}$ may remain elsewhere — audit grep needed.
- Thousands of non-classical `physicalvignette` blocks remain outside edited regions.
- Chapter PDF extraction not automated.

## 5. Build

Run: `latex\build-review-batch-c.ps1`  
Review package: `VOLUME_I_RELEASE/BATCH_C_REVIEW_20261114/`  
**Review-ready only if** `latexmk` exit 0 and undefined-reference count acceptable in `BUILD_LOG.txt`.

## 6. Next: Batch D

Reciprocity, radial orthogonality integral proofs, operator compactness hypotheses for $\boldsymbol{\Gamma}_\omega$, paragraph pass on §§2.3–2.4 openings.