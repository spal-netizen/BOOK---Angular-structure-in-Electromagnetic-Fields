# Start Here — Volume I

**Baseline locked:** 2026-05-24  
**Volume I draft freeze:** 2026-06-09 — **ALL FOUR CHAPTERS FROZEN**  
**Governance sync:** 2026-06-17 (integrated build)  

---

## Current status

| Item | Value |
|------|--------|
| **Session** | **2026-06-13** — title/front-matter refresh + figure legibility |
| **Freeze** | `TOC/VOLUME-I-FINAL-FREEZE-LOCK.md` — Ch. 1–4 **FINAL FROZEN** |
| **PDF** | `latex/main.pdf` — **540 pages** |
| **Archive** | `review/Volume-I-FINAL-540pp-2026-06-13.pdf` |
| **Title** | *Angular Structure in Electromagnetic Fields* — **Volume I:** *Foundations of Radiation, Symmetry, and Realizability* |
| **Title lock** | `TOC/VOL-I-TITLE-FRONTMATTER-REFRESH-LOCK.md` |
| **Manuscript** | Ch.1 **4,651** / Ch.2 **11,686** / Ch.3 **12,002** / Ch.4 **6,674** lines (**35,013 total**) |
| **Tier A figures** | **9/9 embedded** — `TOC/VOL-I-TIER-A-EMBED-COMPLETE-LOCK.md` |
| **Integration** | `TOC/VOL-I-FINAL-INTEGRATION-REPORT.md` — cross-chapter checks **PASS** |
| **Masterpiece audit** | `TOC/VOL-I-MASTERPIECE-AUDIT-COMPLETE-LOCK.md` — Ch. 1–4 **PASS** (2026-06-17) |
| **Masterpiece transformation** | `TOC/VOL-I-MASTERPIECE-TRANSFORMATION-COMPLETE-LOCK.md` — Ch. 1–4 **PASS** (2026-06-17) |
| **Deepen** | **HALTED** — `TOC/VOLUME-I-DEEPEN-STOP-LOCK.md` |
| **Audit Step 5** | **COMPLETE** — Final Freeze (`TOC/VOL-I-AUDIT-5-COMPLETE-LOCK.md`) |
| **Status** | **VOLUME I FINAL FROZEN** — author review PDF ready |

---

## Masterpiece pass (complete)

Ch. 1–4 three-pass masterpiece audit + 15-rule transformation **COMPLETE** (2026-06-17). Full Volume I integrated build archived.

Per-chapter transformation PDFs: `review/Volume-I-Ch0N-Masterpiece-Transformation-2026-06-17.pdf`  
Integration script: `scripts/Vol-I-Final-Integrate-RunAll.ps1`

---

## Resume command

```text
GCHECK UNLOCK VOLUME-I-FINAL
```

Volume I is **FINAL FROZEN** (2026-06-17 integrated build). Unlock required for any edit.  
Full 5-step pipeline: `TOC/VOLUME-I-AUDIT-PIPELINE-LOCK.md` — **ALL STEPS COMPLETE**

| Step | Command |
|------|---------|
| 1 Timelessness | `GCHECK VOL-I-AUDIT-1-TIMELESSNESS` |
| 2 Classical Monograph | `GCHECK VOL-I-AUDIT-2-MONOGRAPH` |
| 3 Masterpiece | `GCHECK VOL-I-AUDIT-3-MASTERPIECE` |
| 4 Publisher-Referee | `GCHECK VOL-I-AUDIT-4-REFEREE` |
| 5 Final Freeze | `GCHECK VOL-I-AUDIT-5-FINAL-FREEZE` |

**Conduct audits step-wise, one at a time.** Apply corrections and re-freeze after each step before advancing.

---

## Files to open first

1. `review/Volume-I-FINAL-540pp-2026-06-13.pdf` — **author review PDF (read first)**  
2. `TOC/VOL-I-FINAL-INTEGRATION-REPORT.md` — cross-chapter integration verdict  
3. `TOC/VOLUME-I-FINAL-FREEZE-LOCK.md` — master freeze authority  
4. `TOC/VOLUME-I-AUDIT-PIPELINE-LOCK.md` — 5-step audit protocol  
5. `latex/main.pdf` — live Volume I build (540 pp)  
6. `TOC/GCHECK-MASTER-CUMULATIVE.md` — zero-deviation checklist  
7. `progress.md` — line counts and milestone tracker  

---

## Per-chapter freeze locks

| Ch. | Lock file | Lines |
|-----|-----------|-------|
| 1 | `TOC/CH01-VOLUME-I-FREEZE-LOCK.md` | 4,651 |
| 2 | `TOC/CH02-VOLUME-I-FREEZE-LOCK.md` | 11,686 |
| 3 | `TOC/CH03-VOLUME-I-FREEZE-LOCK.md` | 12,002 |
| 4 | `TOC/CH04-VOLUME-I-FREEZE-LOCK.md` | 6,674 |

---

## Scientific arc (Volume I)

- **Ch. 1:** What angular structure means  
- **Ch. 2:** How angular structure is exported  
- **Ch. 3:** How exported structure is represented  
- **Ch. 4:** Why most structure cannot be physically realized  

---

## Unlock (author only)

- Targeted fix during audit: `GCHECK UNLOCK VOL-I-CH0X` + `GCHECK REVISE X.y.z — <note>`
- After Step 5 only: `GCHECK UNLOCK VOLUME-I-FINAL`
