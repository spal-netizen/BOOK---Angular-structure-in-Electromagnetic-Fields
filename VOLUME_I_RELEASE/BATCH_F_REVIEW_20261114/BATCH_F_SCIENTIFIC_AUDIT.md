# Batch F — Whole-section reconstruction and scientific status (2026-11-14)

## A. Repository state

| Item | Value |
|------|--------|
| Branch | `volume-i/ch2-4-coordinated-transformation` |
| Parent | `c6d7e5e` (Batch E) |
| Batch F commit | `8413d7b` (parent `c6d7e5e`) |
| Ch.1 `latex/ch01.tex` | Unedited; SHA256 `595BF96BFAAC7FED4F568E9573C70CD302296E40BEA31773F0DCD4BBF72DFD85` |

## B. Build recovery

| Check | Result |
|-------|--------|
| Batch D/E PDF in release dirs | **False** at Batch F start — prior latexmk still active (multiple `pdflatex` with high CPU) |
| Action | **Did not kill** active builds; run `latex/build-review-batch-f.ps1` from Batch F commit when machine idle |
| Batch C log encoding | UTF-16 LE; decode via `build-review-batch-e.ps1` → `BUILD_LOG_UTF8.txt` |
| Batch F log policy | UTF-8 only (`Add-Content -Encoding utf8`) |

## C. Complete sections touched (paragraph reconstruction scope)

| Section | File(s) | Scope in Batch F |
|---------|---------|------------------|
| **§2.3** (intro) | `section-orig-014-2-3-green-functions-and-electromagnetic-inversion.tex` | **Full section intro rebuilt** (L4–22) |
| **§2.4** (intro) | `section-orig-020-2-4-radiation-conditions-and-uniqueness.tex` | **Full section intro rebuilt** (L4–14) |
| §2.3.2 | `restore-orig-017` | Coincidence proof + `eq:ch2.scalar-interior-sphere-limit`; opening paragraph (prior batch) |
| §2.3.1 | `restore-orig-015` | Column curl--curl (Batch E); not re-read entire subsection in F |
| §2.4.3 | `restore-orig-023` | **Not expanded in F** — remains Batch D qualification |
| **§3.4.1** | `ch03.tex` | **Opening paragraph block rebuilt** (L5730–5745) |
| **§3.4.2** | `ch03.tex` | **Opening paragraph block rebuilt** (L6068–6076) |
| **§3.4.3** | `ch03.tex` | Orthogonality proof + `eq:ch3.far-shell-ET-leading`, `eq:ch3.shell-ET-orthogonality-display` |
| **§4.0** | `ch04.tex` | **Second intro paragraph rebuilt** (chart vs realizability) |
| **§4.4.2** | `ch04.tex` | Figure `fig:ch4.prop-ev-partition` **redrawn**; caption harmonized |
| §4.4.3 area | `ch04.tex` | `eq:ch4.reciprocity-ibp-step`; `prop:ch4.gamma-compact` **qualified** |

**Explicitly untouched in Batch F:** Most of §§2.3.1 body, §2.4.1–2.4.2 bodies, Ch.3 §§3.4.1–3.4.2 bodies after openings, bulk of Ch.4 beyond cited blocks, all other chapters.

## D. Paragraph ledger (before → after)

| ID | Location | Before | After |
|----|----------|--------|-------|
| F-01 | `section-orig-014` L4–29 | Fragmented MoM/scanner list; duplicate “two questions” | Single Maxwell→scalar/dyad→subsection roadmap; export map deferred to §2.4 |
| F-02 | `section-orig-020` L4–18 | Incoming/outgoing paragraph stack | Subsection roadmap: Sommerfeld, `O_out` vs `Pi_rad`, uniqueness, non-uniqueness |
| F-03 | `restore-orig-017` proof | Interior sphere described in prose only | `eq:ch2.scalar-interior-sphere-limit` + Lorenz/longitudinal cancellation argument |
| F-04 | `ch03` §3.4.1 open | Condon–Shortley admin + “define once” | Rotation→angular chart→VSH definitions narrative |
| F-05 | `ch03` §3.4.2 open | Range campaign opener | Toroidal/poloidal geometry linked to §3.4.3 inner product |
| F-06 | `ch03` thm orthogonality | Scalar ladder only | Far-zone `E_T` asymptotics + `eq:ch3.shell-ET-orthogonality-display` |
| F-07 | `ch04` §4.0 | Long historical stack + pal2026 | Chart vs realizability; `Gamma_omega`; electrical size |
| F-08 | `ch04` fig 4.4.2 | `Pi_prop`→`Pi_rad` chain on fields | `S→O_out→S_out→Pi_rad→Gamma`; dashed spectral `Pi_prop` |
| F-09 | `ch04` reciprocity proof | One-line IBP | `eq:ch4.reciprocity-ibp-step` with surface term hypothesis |
| F-10 | `ch04` compactness | Claimed `Gamma` compact on `J` | **Restricted** to Hilbert–Schmidt mode functionals `K_lm` |

## E. Scientific classification

| Result | Status | Gap |
|--------|--------|-----|
| `eq:ch2.column-curl-curl-check` | PARTIALLY ESTABLISHED | Term-by-term gradient reduction not displayed |
| `eq:ch2.scalar-interior-sphere-limit` | ESTABLISHED BY VERIFIED CITED SOURCE | Standard Green identity; not re-derived every step |
| `thm:ch2.dyadic-distributional-fundamental` | PARTIALLY ESTABLISHED | Column-a interior limit cited; full Tai verification open |
| VSH `eq:ch3.shell-ET-orthogonality-display` | PARTIALLY ESTABLISHED | `A_lm` not expanded in components; `R_ll'` cited |
| `thm:ch3.vsh-completeness` | PROVED UNDER STATED RESTRICTIONS | Unchanged restricted space |
| `eq:ch4.reciprocity-ibp-step` | PARTIALLY ESTABLISHED | `Gamma_lm`, `U_lm` kernels not closed explicitly |
| `prop:ch4.gamma-compact` | PROVED UNDER STATED RESTRICTIONS | **Mode functionals on L²(Ω_s)** only |

## F. Next (Batch G)

1. Full paragraph pass: `restore-orig-015` (entire §2.3.1), `restore-orig-021`–`023` (§2.4 bodies).
2. Full §3.4.1–3.4.2 bodies (definitions + toroidal prop narrative).
3. Ch.4 §4.0–4.1 complete; close `Gamma_lm` kernel display.
4. Independent build from Batch F; Ch.1 PDF byte check vs manifest.