# Chapter 2 — Session Save Lock



**Status:** **COMPLETE AND LOCKED — CHAPTER 2**  

**Save date:** 2026-05-31  

**Lock date:** 2026-05-31  

**Sign-off:** `TOC/CH02-MANUSCRIPT-SIGNOFF-LOCK.md`  

**Authority:** Resume pointer for Ch. 2 drafting after break  

**Close protocol:** `TOC/END-OF-SESSION-PROTOCOL-LOCK.md` (LOCKED)



---



## 1. Manuscript state (`latex/ch02.tex`)



| Block | Status | Notes |

|-------|--------|-------|

| **§2.0–§2.4** | **DRAFTED** | Operators, Green, Sommerfeld/uniqueness/reconstruction |

| **§2.5** intro + §2.5.1–§2.5.4 | **DRAFTED** | Radiation integrals HOME chain; rad/NR split; §2.5 summative bridge |

| **§2.6** intro + §2.6.1–§2.6.4 | **DRAFTED** | Spectral/Fredholm/geometric HOME chain; §2.6 summative bridge |

| **§2.7** intro + §2.7.1–§2.7.4 | **DRAFTED** | Null-space / NR / evanescent / angular HOME chain; §2.7 summative bridge |

| **§2.8** intro + §2.8.1–§2.8.3 | **DRAFTED** | Reciprocity HOME chain + §2.8 summative bridge |

| **§2.9** intro | **DRAFTED** | Angular-spectrum chain; `fig:ch2.angular-spectrum-action-roadmap` |

| **§2.9.1** | **DRAFTED** | Plane-wave angular spectrum HOME; radiation operator action |

| **§2.9.2** | **DRAFTED** | Retained/suppressed/filtered HOME partition |

| **§2.9.3** | **DRAFTED** | Near-to-far transformation HOME |

| **§2.9.4** | **DRAFTED** | Far-field angular accessibility HOME |

| **§2.9** | **COMPLETE** | Angular spectrum action chain closed |

| **§2.10.1** | **DRAFTED** | FIG+PROB compactness; USE §2.1.3 |

| **§2.10.2** | **DRAFTED** | FIG+PROB NR sources; USE §2.7.2 |

| **§2.10.3** | **DRAFTED** | FIG+PROB evanescent far suppression; USE §2.9.3 |

| **§2.10.4** | **DRAFTED** | FIG+PROB structured sources HOME; USE §1.2.2 |

| **§2.11** | **COMPLETE** | Inheritance + bridge to Ch. 3 |

| **Ch. 2** | **COMPLETE AND LOCKED** | 45/45 subsections; audit pass; sign-off 2026-05-31 |



**Build:** `scripts/Build-VolumeI-ChapterBib.ps1` → **exit 0** (2026-05-31, audit pass)  

**PDF:** `latex/main.pdf` — **293 pages**



---



## 2. Author workflow locks (in force)



| Lock | Value |

|------|--------|

| Review cadence | **Chapter-end audit only** |

| Draft command | `GCHECK REFRESH DRAFT … — CH2-FRESH MIN-5PP ZERO-REPEAT` |

| GCHECK read-set | Full stack per `TOC/GCHECK-MASTER-CUMULATIVE.md` §1 |

| Zero repetition | Ch. 1 USE by `\ref`/`\eqref` only; honor `chapter_2.forbidden_repeat` |

| Ch. 1 | **Do not edit** without explicit unlock |



---



## 3. Resume command (copy-paste)



```text

GCHECK REFRESH DRAFT 3.0.1 — CH3-FRESH MIN-5PP ZERO-REPEAT

```



---



## 4. Key §2.11 anchors (inheritance)

- `eq:ch2.inheritance-admissibility`, `eq:ch2.defer-topic-rule`, `eq:ch2.defer-reporting-lock`, `eq:ch2.bridge-inheritance-map`

- §2.11.1: `\mathcal{R}_{\mathrm{ch2}}` ledger (§2.0–§2.10 by `\ref`)

- §2.11.3: five export bundles to Ch. 3 (§2.5.1, §2.4, §2.6, §2.9, §2.7)

## 5. Key §2.10.4 anchors

- HOME: `eq:ch2.structured-source-state-def`, `eq:ch2.structured-source-radiation-coefficient`, `eq:ch2.structured-source-far-amplitude`, `eq:ch2.structured-source-topology-gate`, `prop:ch2.structured-source-topology-diagnostic`

- `fig:ch2.wp-structured-source-radiation`

- `eq:ch2.ex-str-counterprop-coefficient`, `eq:ch2.ex-str-far-amplitude-symmetry`, `eq:ch2.ex-str-transport-quotient-a`, `eq:ch2.ex-str-stokes-contrast`, `eq:ch2.ex-str-poynting-vorticity`, `eq:ch2.ex-str-imbalanced-export`, `eq:ch2.ex-str-near-overread`, `eq:ch2.ex-str-deficit-split`

- USE §1.2.2: `eq:ch1.transverse-components`, `eq:ch1.stokes-local`, `eq:ch1.poynting-vorticity`, `eq:ch1.topology-qualified-gate`, `prop:ch1.topology-transport-separation`, `eq:ch1.ex62-zero-transport-result`, `eq:ch1.ex62-imbalance-sensitivity`

## 6. Key §2.10.3 anchors

- `fig:ch2.wp-evanescent-far-suppression`

- `eq:ch2.ex-ev-spectral-decomposition`, `eq:ch2.ex-ev-near-amplitude-ratio`, `eq:ch2.ex-ev-far-invariance`

- `eq:ch2.ex-ev-lateral-null`, `eq:ch2.ex-ev-wrong-pipeline`, `eq:ch2.ex-ev-correct-pipeline`

- `eq:ch2.ex-ev-shell-contrast`, `eq:ch2.ex-ev-deficit-split`

- USE §2.9.3: `eq:ch2.near-to-far-transform-def`, `eq:ch2.near-to-far-evanescent-null`, `thm:ch2.near-to-far-transformation`, `eq:ch2.evanescent-angular-null-law`

## 7. Key §2.10.2 anchors

- `eq:ch2.ex-nr-loop-test`, `eq:ch2.ex-nr-superposition-test`, `eq:ch2.ex-nr-far-invariance`

- `eq:ch2.ex-nr-near-detectability`, `eq:ch2.ex-nr-inverse-quotient`, `eq:ch2.ex-nr-deficit-split`

- USE §2.7.2: `eq:ch2.nr-current-def`, `eq:ch2.nr-loop-cancellation`, `thm:ch2.canonical-nr-current-families`, `eq:ch2.nr-superposition-law`, `eq:ch2.nr-modal-invisibility`

## 5. Key §2.10.1 anchors

- `fig:ch2.wp-compact-radiation-probes`

- `eq:ch2.ex-compact-green-split`, `eq:ch2.ex-compact-rank-cap`, `eq:ch2.ex-compact-svd-decay`

- `eq:ch2.ex-compact-truncation-bound`, `eq:ch2.ex-compact-mechanism-split`

- USE §2.1.3: `eq:ch2.compact-operator-def`, `eq:ch2.green-compact-split`, `eq:ch2.singular-value-decay`, `eq:ch2.compression-error-bound`, `eq:ch2.rank-composition-law`

## 5. Key §2.9.4 anchors

- `eq:ch2.far-angular-accessibility-def`, `eq:ch2.angular-accessibility-operator`, `eq:ch2.plane-wave-accessibility-filter`

- `eq:ch2.far-angular-transport-gate` (USE §1.2.1/§1.2.3), `eq:ch2.angular-measurement-screen`, `eq:ch2.accessible-angular-budget`

- `eq:ch2.observed-accessibility-rank`

- `thm:ch2.far-angular-accessibility`

- `prop:ch2.accessibility-reciprocity-constraint`, `prop:ch2.accessibility-transport-consistency`, `prop:ch2.accessibility-observation-rank`

- `fig:ch2.far-angular-accessibility-pipeline`

## 5. Key §2.9.3 anchors

- `eq:ch2.far-zone-extractor-def`, `eq:ch2.near-to-far-transform-def`, `eq:ch2.near-to-far-operator-composition`

- `eq:ch2.near-to-far-lateral-link`, `eq:ch2.near-to-far-evanescent-null`, `eq:ch2.near-to-far-integral-agreement`, `eq:ch2.near-to-far-shell-error`

- `thm:ch2.near-to-far-transformation`

- `prop:ch2.near-to-far-integral-consistency`, `prop:ch2.near-to-far-null-invariance`, `prop:ch2.near-to-far-finite-shell-error`

- `fig:ch2.near-to-far-pipeline`

## 6. Key §2.9.2 anchors

- `eq:ch2.retained-angular-amplitude-def`, `eq:ch2.suppressed-angular-amplitude-def`, `eq:ch2.filtered-angular-amplitude-def`

- `eq:ch2.angular-component-partition`, `eq:ch2.retained-lateral-spectrum-def`, `eq:ch2.filtered-lateral-spectrum-def`

- `eq:ch2.suppressed-lateral-null-law`, `eq:ch2.filtered-rank-bound`

- `thm:ch2.angular-component-partition`

- `prop:ch2.retained-suppressed-mechanism-independence`, `prop:ch2.filtered-observation-rank-bound`

- `fig:ch2.retained-suppressed-filter-pipeline`

## 7. Key §2.9.1 anchors

- `eq:ch2.plane-wave-angular-spectrum-def`, `eq:ch2.plane-wave-z-propagation`

- `eq:ch2.radiative-lateral-spectrum-def`, `eq:ch2.plane-wave-radiation-operator`

- `eq:ch2.evanescent-angular-null-law`

- `thm:ch2.plane-wave-radiation-operator-action`

- `prop:ch2.plane-wave-null-invariance`, `prop:ch2.plane-wave-continuous-consistency`

- `fig:ch2.plane-wave-radiation-pipeline`

## 8. Key §2.9 intro anchors

- `eq:ch2.section29-angular-spectrum-chain`

- `eq:ch2.plane-wave-radiation-operator-preview`, `eq:ch2.retained-suppressed-filter-preview`

- `eq:ch2.near-to-far-transform-preview`, `eq:ch2.far-angular-accessibility-preview`

- `eq:ch2.angular-action-composition`, `fig:ch2.angular-spectrum-action-roadmap`

## 9. Key §2.8.3 anchors

- `thm:ch2.radiation-reception-reciprocity`

- `eq:ch2.port-radiation-reception-operator`, `eq:ch2.transmit-receive-reciprocity`, `eq:ch2.reciprocal-impedance-matrix`

- `eq:ch2.port-coupling-bilinear`, `eq:ch2.port-modal-coupling-sum`

- `fig:ch2.transmit-receive-pipeline`

## 10. Key §2.8.2 anchors

- `thm:ch2.radiation-modal-orthogonality-coupling`

- `eq:ch2.radiation-modal-orthogonality`, `eq:ch2.modal-coupling-coefficient`, `eq:ch2.radiative-coupling-bilinear`

- `eq:ch2.modal-coupling-sum-diagonal`, `eq:ch2.reciprocal-adjoint-mode-identification`, `eq:ch2.degenerate-block-coupling-matrix`

- `fig:ch2.modal-coupling-pipeline`

## 11. Key §2.8.1 anchors

- `thm:ch2.lorentz-reciprocity-operator`

- `eq:ch2.reciprocal-medium-class`, `eq:ch2.lorentz-volume-reciprocity`, `eq:ch2.lorentz-reciprocity-operator`

- `eq:ch2.radiation-map-reciprocity`, `prop:ch2.dyadic-reciprocity-home`, `prop:ch2.reciprocity-null-invariance`

- `fig:ch2.lorentz-reciprocity-pipeline`

## 12. Key §2.8 intro anchors



- `eq:ch2.section28-reciprocity-chain`

- `eq:ch2.lorentz-reciprocity-preview`, `eq:ch2.modal-orthogonality-preview`

- `eq:ch2.transmit-receive-swap-preview`, `eq:ch2.radiative-coupling-bilinear-preview`

- `fig:ch2.reciprocity-roadmap`



## 13. Key §2.7 anchors (complete)



- `eq:ch2.section27-nullspace-chain`

- `thm:ch2.radiation-nullspace-structure` (§2.7.1)

- `thm:ch2.canonical-nr-current-families` (§2.7.2)

- `thm:ch2.evanescent-nonreconstructability` (§2.7.3)

- `thm:ch2.angular-spectrum-null-consequences` (§2.7.4)

- `eq:ch2.angular-spectrum-composition-law`, `eq:ch2.suppressed-angular-sheet-def`

- `fig:ch2.angular-spectrum-null-pipeline`



---



## 17. Splice scripts on disk (§2.5–§2.10)



`scripts/Splice-Sec25Intro.ps1` … `Splice-Sec294.ps1`, `Splice-Sec2101.ps1` … `Splice-Sec2104.ps1`, `Splice-Sec211.ps1`



**Temp drafts:** none (`latex/_sec*_fresh.tex` deleted after successful splices)



---



## 15. Governance files synced on save (LOCKED 2026-05-31)



| File | State |

|------|--------|

| `progress.md` | **Ch. 2 LOCKED**; resume **Ch. 3 §3.0.1**; PDF **293 pp** |

| `00-FORWARD-MAP.yaml` | `status: COMPLETE_LOCKED`; `next_subsection: "3.0.1"` |

| `START-HERE.md` | Resume command + Ch. 3 pointers |

| `TOC/CH02-MANUSCRIPT-SIGNOFF-LOCK.md` | Formal sign-off |

| `TOC/CH02-SESSION-SAVE-LOCK.md` | This file |



---



## 16. Disk and close (LOCKED)



| Step | Status |

|------|--------|

| Tool-written files on disk | **YES** (2026-05-31) |

| `latex/main.pdf` on disk | **YES** (gitignored; local copy only) |

| `main.pdf` build | **exit 0**, 293 pages |

| Author **File → Save All** | **Required** if any editor tab shows unsaved |

| Close Cursor | Safe after Save All |



---



**END OF SESSION SAVE LOCK — CHAPTER 2 COMPLETE AND LOCKED 2026-05-31**

