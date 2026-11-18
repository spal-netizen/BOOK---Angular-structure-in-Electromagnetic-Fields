# Batch D — Scientific and exposition audit (2026-11-14)

## Repository status

| Item | Value |
|------|--------|
| Branch | `volume-i/ch2-4-coordinated-transformation` |
| Parent (start) | `509eaa0` (Batch C) |
| Batch D commit | `fa99809` (parent `509eaa0`) |
| Chapter 1 | **Not edited**; `latex/ch01.tex` SHA256 at audit time: `595BF96BFAAC7FED4F568E9573C70CD302296E40BEA31773F0DCD4BBF72DFD85` (working-tree path; benchmark manifest uses canonical R13 tree) |

## Batch C build verification

- `VOLUME_I_RELEASE/BATCH_C_REVIEW_20261114/BUILD_LOG.txt` on disk is **not plain UTF-8 text** (tool read fails as binary); treat prior “build still running” claim as **unverified** until a fresh log is produced with `latex/build-review-batch-c.ps1` or Batch D log below.
- Batch D build launched via `latex/build-review-batch-d.ps1`; see **Build status** at end of this file.

## Editing record (source-level)

### Chapter 2

| Location | Change |
|----------|--------|
| `restore-orig-017` (§2.3.2) | **Theorem** `thm:ch2.dyadic-distributional-fundamental`: distributional curl–curl identity \(\mathcal{W}_{E,\omega}\overline{\mathbf{G}}_{E,0}=\overline{\mathbf{I}}\delta^{(3)}\) + proof sketch (excluded ball, IBP columnwise). |
| `restore-orig-013` (§2.2.4 chain) | Removed \(\Pi_{\mathrm{rad}}=\mathcal{O}_{\mathrm{out}}\circ\Pi_{\mathrm{prop}}\); aligned regime projectors with `eq:ch2.outgoing-radiation-refinement`. |
| `restore-orig-022` | Dual label `eq:ch2.rad-projection-composition` on refinement equation; prose on \(\mathcal{O}_{\mathrm{out}}\) order. |
| `restore-orig-023` | Qualified uniqueness: flux proof vs cited resolvent injectivity; \(\mathcal{R}_\omega\) uses \(\mathcal{S}_\omega^{(\mathrm{out})}\). |
| `restore-orig-002`, `part01`, `part03` | Global operator-chain reconciliation. |

### Chapter 3

| Location | Change |
|----------|--------|
| `ch03.tex` ~2163 | Replaced false \(\Pi_{\mathrm{rad}}=\mathcal{O}_{\mathrm{out}}\circ\Pi_{\mathrm{prop}}\) with Batch C refinement cite. |
| `thm:ch3.vsh-orthogonality` proof | Steps 1–5: explicit \(Y_\ell^m\) angular integral cite, radial shell cite, M–N cross-term scope, **explicit non-claim** for arbitrary \(\HCurl\) volume orthogonality. |

### Chapter 4

| Location | Change |
|----------|--------|
| `prop:ch4.source-mode-alignment` proof | Volume / radiative / gauge-relative \(\mathcal{Z}_{\ell m}^{(\sigma)}\) normalization. |
| `prop:ch4.gamma-compact` (new) | Compactness of \(\boldsymbol{\Gamma}_\omega\) under stated \(L^2\) source norm and bounded \(\mathcal{C}\). |

## Scientific classification

| Result | Status | Notes |
|--------|--------|-------|
| Distributional dyadic at coincidence `thm:ch2.dyadic-distributional-fundamental` | **PARTIALLY ESTABLISHED** | Singular-term structure stated; full column-by-column Lorenz verification and interior-sphere limits not expanded to monograph depth. |
| Column-by-column free-space dyad vs Maxwell | **UNRESOLVED** | Batch C `prop:ch2.dyadic-curl-curl-green` retained; Batch D did not re-audit every dyad term. |
| Exterior uniqueness `thm:ch2.exterior-radiative-uniqueness` | **PROVED UNDER STATED RESTRICTIONS** | Flux identity + zero-power lemma in-text; triviality step **imports** retarded resolvent (now stated explicitly). |
| \(\mathcal{O}_{\mathrm{out}}\) vs \(\Pi_{\mathrm{rad}}\) | **PROVED** (Prop. `prop:ch2.Pirad-vs-Oout`, HOME §2.4.2) | Batch D extended chain to `part01`, `part03`, `restore-orig-002/013`, `ch03` rigged embedding. Legacy \(\Pi_{\mathrm{rad}}\Pi_{\mathrm{prop}}\) **ordering in Ch.4 evanescent sections** retained as spectral filter narrative — **not** the false equality \(\Pi_{\mathrm{rad}}=\mathcal{O}_{\mathrm{out}}\circ\Pi_{\mathrm{prop}}\). |
| VSH orthogonality | **PARTIALLY ESTABLISHED** | Angular factor cited; radial/shell and M–N steps still rely on referenced equations, not full integral display. |
| VSH completeness | **PROVED UNDER STATED RESTRICTIONS** | Unchanged restricted \(\mathcal{F}_{\mathrm{rad}}\) scope from Batch C. |
| Source–mode reciprocity / \(\mathcal{Z}_{\ell m}^{(\sigma)}\) | **PARTIALLY ESTABLISHED** | IBP + dyadic contraction sketched; flux gauge dependence explicit. |
| \(\boldsymbol{\Gamma}_\omega\) compactness / \(r_{\mathrm{rad}}(\varepsilon)\) | **PARTIALLY ESTABLISHED** | `prop:ch4.gamma-compact` states hypotheses; **full** Fredholm/compact proof on Maxwell BVP not in place. |

## Remaining defects

1. Full chapter-wide paragraph reconstruction (Batches E–G) still outstanding outside §§2.3–2.4 and touched Ch.3–4 blocks.
2. Ch.4 subsections using \(\Pi_{\mathrm{prop}}\Pi_{\mathrm{rad}}\) composition need harmonization with \(\mathcal{S}_\omega^{(\mathrm{out})}\) language (ordering semantics).
3. Dyadic coincidence proof: distribute all \(\delta^{(3)}\) and longitudinal terms per Stratton/Jackson row conventions.
4. VSH: explicit \(\int_{\Gamma_R}\) displays for orthogonality still missing.
5. Global grep: governance archives and `VOLUME_I_RELEASE/BATCH_B` mirrors still contain obsolete operator equality (not in compiled spine).

## Exposition audit

**Reconstructed (Batch D):** opening paragraphs in `restore-orig-017` (coincidence physics), `restore-orig-023` (uniqueness qualification), `restore-orig-002` (operator distinction), Ch.4 compactness prose after new proposition.

**Still weak:** majority of Ch.2–4 sections outside the paths above.

## Language audit (manuscript)

No new batch/stage/AI vocabulary introduced in edited `.tex` paths. Pre-existing governance prose in non-compiled folders not scanned.

## Sources consulted (this batch)

- Stratton (1941), Jackson (1999), Sommerfeld (1949), Hansen (1988), Harrington (2001), Tai (1994), Kato (1995) — cited at point of claim; **primary pages not re-opened** for every step.

## Build status

| Field | Value |
|-------|--------|
| Command | `powershell -File latex/build-review-batch-d.ps1` |
| Driver | `latex/main-vol1-stage10.tex` |
| Exit code | *see `BUILD_LOG.txt` tail when run completes* |
| Review PDF | `VOLUME_I_RELEASE/BATCH_D_REVIEW_20261114/VOLUME_I_REVIEW.pdf` when build succeeds |

First pass observed thousands of **undefined citation/reference** warnings on early latexmk runs (normal until bib/multipass completes). Do not treat PDF as review-ready until log records `latexmk exit code: 0` and undefined-reference count stabilizes.

## Next work (Batch E)

1. Complete dyadic column substitution and boundary-term inventory in §2.3.1.
2. Display VSH orthogonality integrals on \(\Gamma_R\).
3. Ch.4 electrical-size bounds tied to explicit Hankel/source integrals.
4. Harmonize Ch.4 propagating-projector prose with \(\mathcal{S}_\omega^{(\mathrm{out})}\).
5. Continue paragraph reconstruction section-by-section per roadmap.