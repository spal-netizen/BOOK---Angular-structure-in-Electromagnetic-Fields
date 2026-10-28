# Stage 3Z-AK — Final report

## Verdict

**PARTIAL GO FOR INDEPENDENT AUTHOR REVIEW**

---

## 1. Proved analytically

Outgoing same-index Hansen pair on a source-free sphere: power \(P_{\mathrm{out}}=\tfrac12 k^2 Z_0(|m_{\ell m}|^2+|n_{\ell m}|^2)\); Maxwell-stress transport \(\dot J_{z,\mathrm{em,out}}=(m/\omega)P_{\mathrm{out}}\) with arbitrary complex **same-index** coefficients; mixed terms removed by **real-part** cross-product lemmas (not false complex negation). See `STAGE3ZAK_COMPLETE_ANALYTICAL_STRESS_PROOF.md`.

## 2. Numerically corroborated

Engines A (SymPy + component sweep) and B (direct E/H quadrature): exit **0**; multi-\((\ell,m)\), incoming branch, conjugation and \(\mathbf N\)-flip controls — `STAGE3ZAK_NEGATIVE_CONTROL_REPORT.md`.

## 3. Source pages verified

Brown local PDF (`F23088FF…`): searchable text on PDF page **212**, Eqs. **15.49–15.53** region (`logs/brown_reinspect.log`). **Not** a scanned-publisher audit.

## 4. Still inaccessible / unverified

Jackson, Stratton, Harrington, Tai, Hansen 1988, Beth, Allen — **NOT VERIFIED** on original pages in this stage.

## 5. Claim decisions

`STAGE3ZAK_FINAL_CLAIM_STATUS.md` — claims **F–J, G** omitted from theorem; **A–E, K, L** retained with stated hypotheses.

## 6. Manuscript changes

Single scope-remark expansion (proof authority vs citations). Props. 1.7–1.8 proofs unchanged from authenticated 3Z-AJ.

## 7. PDF build and QA

- Command: `pdflatex -interaction=nonstopmode main-ch01-only.tex` ×2 in `build_package/` (MiKTeX pdfTeX 4.27, Python 3.12.10).
- Output: **`STAGE3ZAK_CHAPTER1_INDEPENDENT_REVIEW.pdf`** — **57 pages**, **595.276×841.89 pt** (A4), **1 199 008 B**, SHA **`5F31E103B5ED6614E5B10413BE415DC007C33BD538B4E48A5865F09AD156A6DE`**.
- QA: `qa_renders/page_040.png`–`page_047.png`; text extract `STAGE3ZAK_CHAPTER1_CANDIDATE.txt`.

## 8. Deliverable root

`CHAPTER1_FORENSIC_AUDIT_STAGE1_20261010/STAGE3ZAK_PRIMARY_SOURCE_RECONSTRUCTION_AND_FINAL_PROOF_20261028/`

## 9. Production freeze

**595BF96B…** unchanged; no git mutation.

## 10. Limitations

Print-primary verification incomplete; distinct-mode sums, ring map, \((m+\sigma)\), full \(\mathcal J_z\) eigenfields, and Jackson shell = stress flux **not** established. Chapter **not** scientifically locked.

---

**Review PDF:** `…/STAGE3ZAK_CHAPTER1_INDEPENDENT_REVIEW.pdf`  
**This report:** `…/STAGE3ZAK_FINAL_REPORT.md`
