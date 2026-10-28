# Stage 3Z-AG — Final report

**Workspace:** `STAGE3ZAG_PRIMARY_SOURCE_ADJUDICATION_AND_SELECTIVE_CLOSURE_20261028/`  
**Parent candidate:** Stage 3Z-AF (`D87A9880…`). Production `latex/ch01.tex` **unchanged** (`595BF96B…`).

---

## 1. Original pages inspected

| Source | Result |
|---|---|
| Brown *Electrodynamics* PDF (local) | Eqs. (15.51)–(15.53) re-read; extract in `evidence/brown/` |
| Jackson, Stratton print, Harrington, Tai, Hansen 1988, Beth, Allen | **Not inspected** in 3Z-AG (see `SOURCE_ACCESS_LIMITATIONS.md`) |

## 2. Analytically proved (key results)

Single outgoing Hansen multipole with **only** electric **or** magnetic amplitude at fixed \((\ell,m)\):

- \(P_{\mathrm{out}}=\tfrac12 k^2 Z_0 |c|^2\)
- \(\dot J_{z,\mathrm{em,out}}=(m/\omega)P_{\mathrm{out}}\)
- \(\sigma=\sqrt{\ell(\ell+1)}\) in \(\vec Y\) and \(N_r\)
- Wronskian `\eqref{eq:ch1.ex61-hankel-wronskian}` with explicit outgoing/incoming sign

Integrated in candidate Props. 1.7–1.8 with corrected σ/Λ audit prose and scope Remark.

## 3. Numerically corroborated

Engines A & B (exit **0**): singles to \(\sim 10^{-8}\); mixed \((1,1)\), \(a=1\), \(b=j\): \(|\dot J_z-(m/\omega)P|/|P|\lesssim 10^{-9}\), \(|P-2P_0|/P_0\approx 1\). See `MIXED_MODE_ANALYTIC_DERIVATION.md`.

## 4. Narrowed / excluded / open

- Mixed same-\((\ell,m)\): **not** upgraded to theorem (Claim **E**).
- Multimode, \(\mathcal J_z\) eigenfield, ring map, \((m+\sigma)\) law: **OPEN** or **NOT-PROVED-AND-EXCLUDED** (Claims **F–J**).
- Jackson shell content **≠** stress-flux proof (Claim **H**).

## 5. Files changed (isolated workspace)

- `STAGE3ZAG_CHAPTER1_CANDIDATE.tex` (+ remark, σ/Λ fix, Wronskian incoming note, mixed engine note)
- `build_package/ch01.tex` (sync)
- Engines + JSON results + governance markdown (this folder)

## 6. Review PDF

`STAGE3ZAG_CHAPTER1_INDEPENDENT_REVIEW.pdf` — **56** pages, **A4**, **1 198 417** B, SHA-256 **`F5AEDF2C1838BB81A29C37492497AC1F25BEB56AA387D6E830D2878F3E9D2363`**.

## 7. Hashes (deliverables)

| Artifact | SHA-256 |
|---|---|
| Candidate `.tex` | `A2FB7B6985B8844EB87B9D9DDF9507B2BE3F81FA32F37B1813C6930EF68E4A55` |
| Text export | `2781608EE0117DD1F134FE899EA5BF20B621656131D05FB4EC270FFDA7169868` |
| Engine A | `FE42B30934F0A4108824878110B76E837B21514EEC832FBA9436154835D14FFF` |
| Engine B | `02A415D736A423E0D9F7CAAF84BD7BA35B3BB6EFC8028B509DBC3543A662DDA6` |

Full list: `MANIFEST_SHA256.txt`.

## 8. Production freeze

Verified — see `PRODUCTION_FREEZE_AUTHENTICATION.md`.

## 9. Failures

- Primary print/OCR sources for Jackson §9.8 and Stratton VII still unavailable in pipeline.
- Mixed-mode **analytic** cross-term proof not completed (numerical only).

## 10. Verdict

**PARTIAL GO FOR INDEPENDENT AUTHOR REVIEW**

Core single-multipole power and Maxwell-stress transport (Claims **A–D**) are proved, integrated, and independently engine-checked. Extensions **E–J** remain open or explicitly excluded. Review PDF is ready for author science/editorial pass; **not** a production release.

**Do not merge** to `latex/ch01.tex` without author approval.
