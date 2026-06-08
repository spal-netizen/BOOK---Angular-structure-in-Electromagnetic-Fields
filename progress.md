# Volume I — 12-Month Aggressive Progress Tracker

**Conventions:** \(e^{-j\omega t}\), SI | **Target:** publisher-ready Vol. I in 12 months  
**Baseline locked:** 2026-05-24 (`LOCK-MANIFEST.md`)  
**Chapter 1 locked:** 2026-06-07 (forensic re-lock)  
**Chapter 2 locked:** 2026-05-31 (accessibility audit remediated 2026-05-29)  
**Chapter 3 remediated:** 2026-05-29 (forensic audit + monograph compression pass)  
**TOC:** `TOC/volume-I-ch01-04-FINAL.txt` — LOCKED  
**GCHECK master:** `TOC/GCHECK-MASTER-CUMULATIVE.md`  
**Governance locked:** 2026-05-31 (`LOCK-MANIFEST.md` addendum)  
**Resume at:** **§4.11.1** inventory / forward map (§4.6–§4.10 pass 3/3–5/5 merged 2026-06-08)

## Current focus

| Field | Value |
|-------|--------|
| Active chapter | **4** |
| Active section | **4.0** Introduction (compressed); next **§4.0.1** |
| Tier | A |
| Status | **Ch. 1 audit done**; **Ch. 2 accessibility audit remediated**; **Ch. 3 forensic audit REMEDIATED** through **§3.11.3** |
| Master command | `GCHECK DRAFT 4.11` (chapter inventory + forward map) |
| Ch. 4 doctrine | `TOC/CH04-DRAFTING-KICKOFF-LOCK.md` + `TOC/CH04-REDRAFT-DEPTH-LOCK.md` (locked 2026-06-08) |
| PDF | **667 pages** (`latex/main.pdf`, §4.9–§4.10 pass 3/3) |
| Depth | §4.6 pass **3/3**; §4.7–§4.8 pass **5/5**; §4.9–§4.10 pass **3/3**; §4.11 pending |
| Review cadence | **Chapter-end only** (author revises once §4.11 complete) |

## Milestone calendar

| Month | Weeks | Goal | Exit criterion |
|-------|-------|------|----------------|
| 1 | 1–4 | Setup + Ch. 1 §1.0–§1.2 draft | PDF ≥ 40 pp; notation locked |
| 2 | 5–8 | Ch. 1 complete + §1.7 approved | Ch. 1 full draft |
| 3 | 9–12 | Ch. 2 §2.0–§2.5 | Operator/Green core drafted |
| 4 | 13–16 | Ch. 2 complete + §2.11 | Ch. 2 full draft |
| 5 | 17–20 | Ch. 3 §3.0–§3.4 | VSH/eigenfield core drafted |
| 6 | 21–24 | Ch. 3 complete + §3.11 | **Publisher inquiry + sample ch.** |
| 7 | 25–28 | Ch. 4 §4.0–§4.5 | Realizability draft half |
| 8 | 29–32 | Ch. 4 complete + §4.11 | Vol. I full first draft |
| 9 | 33–36 | Cross-chapter consistency pass | No forbidden repeats (see grep log) |
| 10 | 37–40 | Proofs, examples, figures | All Tier A complete |
| 11 | 41–44 | Peer review (2–3 readers) | Comment resolution |
| 12 | 45–48 | Publisher proposal + polish | Submitted manuscript |

## Chapter checklist

- [x] Ch. 1 — Foundations (§1.7 locked; 32/32 subsections; 68 figures; forensic re-lock **2026-06-07**; **301 pp** `main.pdf`)
- [x] Ch. 2 — Operators (§2.11 locked; 45/45 subsections; **293 pp** `main.pdf`; sign-off 2026-05-31)
- [x] Ch. 3 — Eigenfields (§3.11 locked; forensic audit remediated 2026-05-29) ← sample for publisher
- [ ] Ch. 4 — Realizability (§4.11 locked)
- [ ] Cross-volume forward map to Ch. 5 frozen in §4.11.2
- [ ] Bibliography seeded
- [ ] Index (month 11–12)

## Subsection log (append as you go)

| Done | Sec ID | Tier | Date | Notes |
|------|--------|------|------|-------|
| [x] | 1.0.1–1.7.3 | A | 2026-05-29 | Ch. 1 **COMPLETE AND LOCKED**; no-recursion PASS |
| [x] | 2.0.0–2.0.2 | A | 2026-05-29 | §2.0 framing + §2.0.1–§2.0.2 HOME in ch02.tex; session save lock |
| [x] | 2.2.4 | A | 2026-05-29 | Propagating/evanescent/non-propagating HOME; eqs (2.128)–(2.141); §2.2 bridge |
| [x] | 2.3 intro | A | 2026-05-29 | Green-function roadmap fig; resolvent→kernel framing; §2.3.1–§2.3.4 preview |
| [x] | 2.3.1 | A | 2026-05-29 | Scalar/vector/dyadic HOME; free-space kernels; eqs (2.142)–(2.155); fig pipeline |
| [x] | 2.3.2 | A | 2026-05-29 | Singularities/distributions/regularization HOME; finite-part/MoM self-term; fig split |
| [x] | 2.3.3 | A | 2026-05-29 | Retarded/causal propagation HOME; light-cone fig; kernel Laplace theorem |
| [x] | 2.3.4 | A | 2026-05-29 | Multi-region inversion/solvability HOME; §2.3 summative bridge |
| [x] | 2.4 intro | A | 2026-05-29 | Radiation/uniqueness roadmap fig; Sommerfeld→reconstruction preview |
| [x] | 2.4.1 | A | 2026-05-29 | Sommerfeld HOME; USE §1.1.2; far-zone fig; Silver–Müller link |
| [x] | 2.4.2 | A | 2026-05-29 | Outgoing selector $\mathcal{O}_{\mathrm{out}}$ HOME; completes rad-projection |
| [x] | 2.4.3–2.4.4 | A | 2026-05-29 | Exterior uniqueness + source reconstruction; §2.4 summative bridge |
| [x] | 2.5 intro–2.5.4 | A | 2026-05-29 | Radiation integrals HOME chain; USE §1.2.4/§2.2.4 rad/NR split; §2.5 bridge |
| [x] | 2.6 intro | A | 2026-05-31 | Spectral/Fredholm roadmap; discrete/continuous preview; fig spectral-theory-roadmap |
| [x] | 2.6.1 | A | 2026-05-31 | HOME eigenpairs + `thm:ch2.radiation-spectral-decomposition`; fig radiation-spectral-decomposition |
| [x] | 2.6.2 | A | 2026-05-31 | USE §1.3; `thm:ch2.rotation-spectral-degeneracy`; fig rotation-spectral-covariance |
| [x] | 2.6.3 | A | 2026-05-31 | USE §2.1.3; `thm:ch2.radiation-fredholm-structure`; fig fredholm-radiation-pipeline |
| [x] | 2.6.4 | A | 2026-05-31 | HOME `thm:ch2.geometric-spectral-constraints`; §2.6 summative bridge |
| [x] | 2.7 intro | A | 2026-05-31 | `eq:ch2.section27-nullspace-chain`; `fig:ch2.nullspace-roadmap` |
| [x] | 2.7.1 | A | 2026-05-31 | HOME `thm:ch2.radiation-nullspace-structure`; `fig:ch2.radiation-nullspace-pipeline` |
| [x] | 2.7.2 | A | 2026-05-31 | HOME `thm:ch2.canonical-nr-current-families`; `fig:ch2.nr-current-configurations` |
| [x] | 2.7.3 | A | 2026-05-31 | HOME `thm:ch2.evanescent-nonreconstructability`; `fig:ch2.evanescent-nonreconstruct-pipeline` |
| [x] | 2.7.4 | A | 2026-05-31 | HOME `thm:ch2.angular-spectrum-null-consequences`; §2.7 summative bridge; `fig:ch2.angular-spectrum-null-pipeline` |
| [x] | 2.8 intro | A | 2026-05-31 | `eq:ch2.section28-reciprocity-chain`; preview eqs for §2.8.1–§2.8.3; `fig:ch2.reciprocity-roadmap` |
| [x] | 2.8.1 | A | 2026-05-31 | HOME `thm:ch2.lorentz-reciprocity-operator`; dyadic swap proof; `fig:ch2.lorentz-reciprocity-pipeline` |
| [x] | 2.8.2 | A | 2026-05-31 | HOME `thm:ch2.radiation-modal-orthogonality-coupling`; modal coupling eqs; `fig:ch2.modal-coupling-pipeline` |
| [x] | 2.8.3 | A | 2026-05-31 | HOME `thm:ch2.radiation-reception-reciprocity`; §2.8 summative bridge; `fig:ch2.transmit-receive-pipeline` |
| [x] | 2.9 intro | A | 2026-05-31 | `eq:ch2.section29-angular-spectrum-chain`; preview eqs §2.9.1–§2.9.4; `fig:ch2.angular-spectrum-action-roadmap` |
| [x] | 2.9.1 | A | 2026-05-31 | HOME plane-wave spectrum + radiation operator action; `thm:ch2.plane-wave-radiation-operator-action`; `fig:ch2.plane-wave-radiation-pipeline` |
| [x] | 2.9.2 | A | 2026-05-31 | HOME retained/suppressed/filtered partition; `thm:ch2.angular-component-partition`; `fig:ch2.retained-suppressed-filter-pipeline` |
| [x] | 2.9.3 | A | 2026-05-31 | HOME near-to-far transform; `thm:ch2.near-to-far-transformation`; `fig:ch2.near-to-far-pipeline` |
| [x] | 2.9.4 | A | 2026-05-31 | HOME far-field accessibility; USE §1.2.1/§1.2.3; `thm:ch2.far-angular-accessibility`; `fig:ch2.far-angular-accessibility-pipeline` |
| [x] | 2.10.1 | A | 2026-05-31 | FIG+PROB compactness; USE §2.1.3; `fig:ch2.wp-compact-radiation-probes`; eqs `ex-compact-*` |
| [x] | 2.10.2 | A | 2026-05-31 | FIG+PROB NR sources; USE §2.7.2; `fig:ch2.wp-nr-superposition-invisibility`; eqs `ex-nr-*` |
| [x] | 2.10.3–2.11.3 | A | 2026-05-31 | §2.10 DOF suite + §2.11 inheritance; **Ch. 2 LOCKED** |

## Consistency checks (month 9)

```powershell
# From project root — duplicate "we define" phrases
rg -i "we define" latex/

# Maxwell restatements in ch02-ch04
rg -i "Maxwell.*differential" latex/ch0[234].tex
```

## Lock change log

2026-05-31: **Physical review pack** — `review/Volume-I-Physical-Review-2026-05-31.pdf` (293 pp); summer break → return **2026-06-06**; Ch. 3 §3.0.1 next.
2026-05-31: **Ch. 2 COMPLETE AND LOCKED** — `TOC/CH02-MANUSCRIPT-SIGNOFF-LOCK.md`; audit pass; 45/45 subsections; PDF **293 pp**; resume **Ch. 3 §3.0.1**.
2026-05-31: **Ch. 2 DRAFT COMPLETE** — §2.10.4 structured sources + §2.11 inheritance; resume **Ch. 3 §3.0.1**; PDF **291 pp**.
2026-05-31: **§2.10.4 drafted** — FIG+PROB structured sources HOME; USE §1.2.2; PDF **291 pp**.
2026-05-31: **§2.10.3 drafted** — FIG+PROB evanescent far suppression; USE §2.9.3; resume **§2.10.4**; PDF **287 pp**.
2026-05-31: **§2.10.1 drafted** — FIG+PROB compactness; USE §2.1.3; resume **§2.10.2**; PDF **281 pp**.
2026-05-31: **§2.9.4 drafted + §2.9 complete** — far-field accessibility HOME; resume **§2.10.1**; PDF **279 pp**.
2026-05-31: **§2.9.3 drafted** — near-to-far HOME operator map; resume **§2.9.4**; PDF **275 pp**.
2026-05-31: **§2.9.2 drafted** — retained/suppressed/filtered HOME partition; resume **§2.9.3**; PDF **273 pp**.
2026-05-31: **§2.9.1 drafted** — plane-wave angular spectrum HOME + radiation operator action; resume **§2.9.2**; PDF **269 pp**.
2026-05-31: **§2.9 intro drafted** — angular-spectrum chain + roadmap fig; resume **§2.9.1**; PDF **265 pp**.
2026-05-31: **§2.8.3 drafted + §2.8 complete** — summative bridge; resume **§2.9**; PDF **263 pp**.
2026-05-31: **§2.8.2 drafted** — `thm:ch2.radiation-modal-orthogonality-coupling`; resume **§2.8.3**; PDF **259 pp**.
2026-05-31: **§2.8.1 drafted** — `thm:ch2.lorentz-reciprocity-operator`; dyadic swap HOME proof; resume **§2.8.2**; PDF **255 pp**.
2026-05-31: **§2.8 intro drafted** — reciprocity chain + roadmap fig; resume **§2.8.1**; PDF **251 pp**.
2026-05-31: **§2.7.4 drafted + §2.7 complete** — summative bridge; resume **§2.8**; PDF **249 pp**.
2026-05-31: **§2.7.3 drafted** — `thm:ch2.evanescent-nonreconstructability`; resume **§2.7.4**; PDF **245 pp**.
2026-05-31: **§2.7.2 drafted** — `thm:ch2.canonical-nr-current-families`; resume **§2.7.3**; PDF **243 pp**.
2026-05-31: **§2.7.1 drafted** — `thm:ch2.radiation-nullspace-structure`; resume **§2.7.2**; PDF **239 pp**.
2026-05-31: **§2.7 intro drafted** — null-space chain; resume **§2.7.1**; PDF **235 pp**.
2026-05-31: **§2.6.4 drafted** — `thm:ch2.geometric-spectral-constraints`; §2.6 summative bridge; resume **§2.7**; PDF **231 pp**.
2026-05-31: **GOVERNANCE SYNC LOCKED** — `LOCK-MANIFEST.md`, `00-FORWARD-MAP.yaml`, `START-HERE.md`, `TOC/GCHECK-MASTER-CUMULATIVE.md` §4, `TOC/CH02-FRESH-RESTART-LOCK.md` §5, `TOC/END-OF-SESSION-PROTOCOL-LOCK.md` §3; resume **§2.6.1**; PDF **219 pp**.
2026-05-31: **Ch. 2 session save** — `TOC/CH02-SESSION-SAVE-LOCK.md`; drafted through §2.6 intro.
2026-05-29: **Ch. 2 FRESH RESTART LOCKED** — from §2.0; `GCHECK REFRESH DRAFT … CH2-FRESH MIN-5PP ZERO-REPEAT`; `TOC/CH02-FRESH-RESTART-LOCK.md`.
2026-05-29: **End-of-session protocol LOCKED** — `TOC/END-OF-SESSION-PROTOCOL-LOCK.md` (Save All → close Cursor).
2026-05-29: **Ch. 1 TOC SIGNED OFF** — `TOC/CH01-TOC-SIGNOFF-LOCK.md`; 32/32; no amendments.
2026-05-29: **Ch. 3 TOC flow audit LOCKED** — `TOC/CH03-TOC-AUDIT-FLOW-LOCK.md`; FINAL.txt + ch03.tex + ch04 back-links synced.
2026-05-29: **Ch. 2 TOC flow audit LOCKED** — `TOC/CH02-TOC-AUDIT-FLOW-LOCK.md`.
2026-05-29: Ch.~1 figure legibility pass — two-tier BLOCK/GEO; batch scripts; author deferred further layout polish.
2026-05-29: Ch.~1 final audit — seminal cites only; prose de-architected; §1.7 symbols aligned.
2026-05-28: GCHECK canonical cumulative set locked across governance files.
2026-05-27–2026-05-26: See prior entries in git history / LOCK-MANIFEST addenda.
