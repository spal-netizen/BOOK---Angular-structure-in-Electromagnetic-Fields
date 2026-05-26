# Volume I — 12-Month Aggressive Progress Tracker

**Conventions:** \(e^{-j\omega t}\), SI | **Target:** publisher-ready Vol. I in 12 months  
**Baseline locked:** 2026-05-24 (`LOCK-MANIFEST.md`)  
**Start date:** _____________ (fill when you begin §1.0.1)  
**TOC:** `TOC/volume-I-ch01-04-FINAL.txt` — LOCKED  
**Resume at:** §1.0.1 `[HOME]` in `latex/ch01.tex` (`sec:ch101`)

## Current focus

| Field | Value |
|-------|--------|
| Active chapter | 1 |
| Active section | 1.0.1 |
| Tier | A |
| Status | not started |

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

## Weekly pace (aggressive)

- **5 subsections/week** average (Tier A/B) with your math review on each.
- **1 inheritance section/month** when finishing a chapter (§1.7, §2.11, §3.11, §4.11).

## Chapter checklist

- [ ] Ch. 1 — Foundations (§1.7 locked)
- [ ] Ch. 2 — Operators (§2.11 locked)
- [ ] Ch. 3 — Eigenfields (§3.11 locked) ← sample for publisher
- [ ] Ch. 4 — Realizability (§4.11 locked)
- [ ] Cross-volume forward map to Ch. 5 frozen in §4.11.2
- [ ] Bibliography seeded
- [ ] Index (month 11–12)

## Subsection log (append as you go)

| Done | Sec ID | Tier | Date | Notes |
|------|--------|------|------|-------|
| [x] | 1.0.1 | A | 2026-05-24 | First draft in ch01.tex; author outline saved |
| | 1.0.2 | A | | |

## Consistency checks (month 9)

```powershell
# From project root — duplicate "we define" phrases
rg -i "we define" latex/

# Maxwell restatements in ch02-ch04
rg -i "Maxwell.*differential" latex/ch0[234].tex
```

## Lock change log

2026-05-25: Added strict monograph drafting constraints requested by author. The lock update enforces zero-recursion prose/equation policy, chapter-wise equation and reference numbering intent, minimal schematic-only figures, inline variable/figure definition style, no bullet-list exposition in manuscript body, and citation placement from pioneering plus latest validated sources.
2026-05-25: Added ultimate governance package with a full 19-chapter ULTIMATE FINAL TOC, theorem-home matrix, subsection drafting contract, citation contract, and no-recursion chapter audit pass. Locked for forward-only drafting and overlap suppression across Chapters 13-16.
2026-05-25: Promoted `TOC/TOC-master-19chapters-ULTIMATE-V2.2-editorial-polish.txt` to official master TOC for full-book governance; retained ULTIMATE-FINAL as ownership reference source.
2026-05-25: Added and locked prose-uniqueness rule (unique subsection opening/closing paragraphs) and Volume I section-framing rule (mandatory introductory and summative paragraphs for each section).
Session marker: home end @ 2026-05-25 23:14 IST, last subsection 1.0.1
2026-05-25: Promoted `TOC/TOC-master-19chapters-ULTIMATE-V3-forward-only.txt` to official master TOC; lock/governance references migrated from V2.2 to V3 in one pass.
2026-05-25: Added and locked depth-and-clarity mandate: each subsection must provide substantial derivation depth, define every equation symbol at first appearance, and explain each major equation mathematically and physically.
2026-05-25: Added and locked advanced prose/numbering rules: unique subsection opening-closing framing, non-repetitive equation-explanation sentence construction, and strict chapter-wise increasing equation/reference numbering style.
2026-05-25: Added and locked classical-monograph quality rule for all 19 chapters: drafting must sustain legendary-level depth, density, construction, and page appearance (Harrington/Pozar/Collin/Balanis/Jackson/Griffiths standard).
2026-05-26: Added and locked model workflow policy in `MODEL-WORKFLOW-LOCKED.md` with task-based switching and mandatory final high-rigor acceptance pass per subsection.
2026-05-26: Added and locked section-first drafting order for all chapters: section intro framing first, subsections next, section summative bridge last.
2026-05-26: Added and locked global drafting style: Version A classical monograph tone is mandatory for all 19 chapters (professional, measured, authoritative, reader-friendly scholarly prose).
