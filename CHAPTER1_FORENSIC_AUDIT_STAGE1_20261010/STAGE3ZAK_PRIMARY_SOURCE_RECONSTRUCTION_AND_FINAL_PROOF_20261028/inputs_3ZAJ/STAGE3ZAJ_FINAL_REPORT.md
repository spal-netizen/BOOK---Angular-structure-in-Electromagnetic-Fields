# Stage 3Z-AJ — Independent stress-proof audit, primary-source verification, and final Chapter 1 integration

**Workspace:** `STAGE3ZAJ_INDEPENDENT_STRESS_PROOF_AND_SOURCE_VERIFICATION_20261028/`  
**Date:** 2026-10-28

---

## A. Isolated workspace and immutable baseline

| Check | Result |
|---|---|
| Production `latex/ch01.tex` | **595BF96BFAAC7FED4F568E9573C70CD302296E40BEA31773F0DCD4BBF72DFD85**, 290247 B |
| Frozen tag → commit | `CHAPTER1-MICROR1-R3B-FROZEN` → **985a8a2e6db47bba6e75b5fc76144a70b84c78af** |
| Parent 3Z-AI candidate | Authenticated in `inputs_3ZAI/` (`DAFBC252…`, 234115 B) |
| Production modified | **No** |

Details: `PRODUCTION_FREEZE_AUTHENTICATION.md`.

---

## B. Cross-product identities (independent)

With \(z=kR\), \(h=h_l^{(2)}(z)\), \(u=zh\), \(v=u'/z\), \(S=|Y_\theta|^2+|Y_\phi|^2\):

- \((\mathbf M\times\mathbf N^*)_r = -j h v^* S\)
- \((\mathbf N\times\mathbf M^*)_r = -j v h^* S\)

**False as complex identity:** \((\mathbf N\times\mathbf M^*)_r = -(\mathbf M\times\mathbf N^*)_r\) (Engine A: `complex_sum ≈ 0.20`).

**True for real-part antisymmetry:** \(\Re\{(\mathbf M\times\mathbf N^*)_r + (\mathbf N\times\mathbf M^*)_r\} = 0\) pointwise (`Re_sum = 0`).

**Same-type:** \(\Re\{(\mathbf M\times\mathbf M^*)_r\} = \Re\{(\mathbf N\times\mathbf N^*)_r\} = 0\) pointwise.

Documented in `STAGE3ZAJ_POWER_AND_STRESS_ANALYTIC_DERIVATION.md` §B.

---

## C. Maxwell stress (first principles)

Vacuum cycle-average tensor from Ch. 1; \(T_{r\phi}\) expanded for \(\E = -k^2 Z_0(a\mathbf M + b\mathbf N)\), \(\H = -k^2(a\mathbf N - b\mathbf M)\) with **\(a=a_{\ell m}\), \(b=b_{\ell m}\)** distinct from azimuthal **\(m\)**.

All \(|a|^2\), \(|b|^2\), \(ab^*\), \(a^*b\) slots in \(\Re(E_r E_\phi^*)\) and \(\Re(H_r H_\phi^*)\) mapped to \(\Re\{(\mathbf M\times\mathbf M^*)_r\}\), \(\Re\{(\mathbf N\times\mathbf N^*)_r\}\), and \(\Re\{(\mathbf M\times\mathbf N^*)_r+(\mathbf N\times\mathbf M^*)_r\}\) — **vanish pointwise** before angular integration.

Surviving terms → \(\dot J_{z,\mathrm{em,out}} = (m/\omega) P_{\mathrm{out}}\) with \(P_{\mathrm{out}} = \tfrac12 k^2 Z_0(|a|^2+|b|^2)\).

**Not** inferred from Poynting alone. Manuscript: expanded `align` in Prop. 1.8 proof.

---

## D. Power proof (independent)

Radial \(\Re\{(\E\times\H^*)_r\}\) expanded; mixed terms removed by §B identities; Wronskian \(\Im(h[u']^*) = 1/z\); angular normalization as in candidate.

| Case | Result |
|---|---|
| Electric-type only | \(P = \tfrac12 k^2 Z_0 |a|^2\) |
| Magnetic-type only | \(P = \tfrac12 k^2 Z_0 |b|^2\) |
| Same-index superposition | \(P = \tfrac12 k^2 Z_0 (|a|^2+|b|^2)\) — **full expansion required**; **PROVED** |

Incoming branch: negative power (Engine B negative control).

---

## E. Original-source verification

See `STAGE3ZAJ_PRIMARY_SOURCE_LEDGER.md`. **Only Brown (local PDF) VERIFIED.** Jackson shell-content relation **EXCLUDED** from identification with finite-radius Maxwell-stress flux unless separately proved.

---

## F. Independent Python verification

| Engine | Path | Independence |
|---|---|---|
| A | `STAGE3ZAJ_ENGINE_A_SYMBOLIC.py` | Component bilinears; numeric algebra (not importing B) |
| B | `STAGE3ZAJ_ENGINE_B_INDEPENDENT_MAXWELL_STRESS.py` | Direct E/H, quadrature integration |

Both exit **0**. Logs: `logs/ENGINE_A.log`, `logs/ENGINE_B.log`. JSON: `ENGINE_A_RESULTS.json`, `ENGINE_B_RESULTS.json`. Convergence and negative controls: `logs/CONVERGENCE_TABLE.md`, `logs/NEGATIVE_CONTROL_REPORT.md`.

**Dependency disclosure:** Engine A integrated mixed power test uses the same closed-form \(P_0\) as the manuscript; that test is **corroboration**, not a second independent derivation of case 3.

---

## G. Claim-by-claim decision

Full table: `STAGE3ZAJ_THEOREM_AND_CLAIM_STATUS.md`.

**PROVED (with stated same-index scope):** Props. 1.7–1.8 single-type and arbitrary complex **same-index** \(a_{\ell m}, b_{\ell m}\) superposition.

**NOT PROVED / EXCLUDED:** distinct \(\ell\) or \(m\) sums, full \(\mathcal J_z\) eigenfields, equatorial ring map, \(m+\sigma\) law, Jackson shell = stress flux.

---

## H. Manuscript integration

Source: `STAGE3ZAJ_CHAPTER1_CANDIDATE.tex` (from authenticated 3Z-AI).

Changes: expanded stress proof algebra; \(a_{\ell m}, b_{\ell m}\) notation; corrected remark `rem:ch1.am-power-target`; retained **Re** cross-product lemmas (no false complex negation).

Plain text: `STAGE3ZAJ_CHAPTER1_CANDIDATE.txt` (PDF extract).

---

## I. Deliverables checklist

| # | Artifact | Status |
|---|---|---|
| 1 | `STAGE3ZAJ_FINAL_REPORT.md` | This file |
| 2 | `STAGE3ZAJ_PRIMARY_SOURCE_LEDGER.md` | Done |
| 3 | `STAGE3ZAJ_CONVENTION_AND_NORMALIZATION_SHEET.md` | Done |
| 4 | `STAGE3ZAJ_POWER_AND_STRESS_ANALYTIC_DERIVATION.md` | Done |
| 5 | `STAGE3ZAJ_THEOREM_AND_CLAIM_STATUS.md` | Done |
| 6–7 | Engine A/B `.py` (root + `engines/`) | Done |
| 8 | `logs/*` | Done |
| 9 | Candidate TeX | Done |
| 10 | `STAGE3ZAJ_CHAPTER1_CANDIDATE.txt` | Done |
| 11 | `STAGE3ZAJ_CHAPTER1_INDEPENDENT_REVIEW.pdf` | Fresh build |
| 12 | PDF metadata | 57 pages, 1198377 B, SHA `6F5B6D3B…`, A4 via `build_package` |
| 13 | QA renders | `qa_renders/page_040.png`–`page_046.png` |
| 14 | `STAGE3ZAJ_MANIFEST_SHA256.txt`, `STAGE3ZAJ_CHANGELOG.md` | Done |

---

## J. Final gate

| Category | Status |
|---|---|
| Analytical proof (Props. 1.7–1.8, same-index) | **Complete** with Re cross-product repair |
| Source-verified support | **Partial** (Brown only) |
| Numerical corroboration | **Pass** (A/B, negative controls) |
| Open conjecture | Multimode sums, ring map, \(m+\sigma\) |
| Excluded claims | Jackson shell = stress; false complex cross identity |

### Overall verdict

**PARTIAL GO FOR INDEPENDENT AUTHOR REVIEW**

Core same-index power and Maxwell-stress transport theorems survive independent re-derivation and dual-engine corroboration. Primary print verification remains open; chapter is **not** scientifically locked on script exit alone.

Production and frozen baseline **unchanged**. No commit/merge/tag/copy-back.
