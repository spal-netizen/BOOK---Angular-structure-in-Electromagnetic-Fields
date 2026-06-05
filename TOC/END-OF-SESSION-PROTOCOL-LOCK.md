# End-of-Session Protocol Lock (Volume I)

**Status:** **LOCKED**  
**Lock date:** 2026-05-29  
**Authority:** Mandatory author and agent procedure at every session end  
**Policy:** Cumulative — applies to all Ch. 2+ drafting sessions unless author unlocks  

---

## 1. Purpose

Before closing Cursor or ending a drafting day, all manuscript and governance writes must be **on disk**, **build-verified** where applicable, and **resume pointers locked** so the next session starts with zero ambiguity.

---

## 2. Mandatory close sequence (author)

Execute in order:

| Step | Action | Pass criterion |
|------|--------|----------------|
| 1 | **File → Save All** in Cursor | No editor tab shows unsaved (dot on tab) |
| 2 | Confirm agent/tool writes on disk | See §3 file checklist |
| 3 | Confirm PDF build if manuscript edited | `scripts/Build-VolumeI-ChapterBib.ps1` → exit 0 |
| 4 | Confirm session lock file current | `TOC/CH02-SESSION-SAVE-LOCK.md` (or successor) |
| 5 | **Close Cursor window** | Safe only after steps 1–4 |

**Rule:** Do not close Cursor with unsaved buffers. Tool-written files are on disk only after save; editor buffers may still be dirty until **Save All**.

---

## 3. On-disk file checklist (summer break close — 2026-05-31)

These files constitute the saved session state:

| File | Role | Locked content |
|------|------|----------------|
| `latex/ch01.tex` | Manuscript | **COMPLETE AND LOCKED** (32 subsections) |
| `latex/ch02.tex` | Manuscript | **COMPLETE AND LOCKED** (45 subsections, §2.11.3) |
| `latex/main.pdf` | Build output | **293 pages**; exit 0 (local; gitignored) |
| `review/Volume-I-Physical-Review-2026-05-31.pdf` | Review copy | Same as `main.pdf`; for printing |
| `review/README-PHYSICAL-REVIEW.md` | Review guide | Page map + checklist |
| `TOC/CH02-MANUSCRIPT-SIGNOFF-LOCK.md` | Ch. 2 sign-off | Formal lock authority |
| `TOC/CH02-SESSION-SAVE-LOCK.md` | Session resume | Ch. 2 closed; Ch. 3 next |
| `TOC/END-OF-SESSION-PROTOCOL-LOCK.md` | This file | Close protocol |
| `progress.md` | Tracker | Resume **§3.0.1** on **2026-06-06** |
| `00-FORWARD-MAP.yaml` | Forward map | `status: COMPLETE_LOCKED`; `next_subsection: "3.0.1"` |
| `LOCK-MANIFEST.md` | Master lock | Summer break + Ch. 2 lock addenda |
| `START-HERE.md` | Entry pointer | Physical review + return command |

**Ch. 1–2 locked:** do not edit `latex/ch01.tex` or `latex/ch02.tex` without explicit unlock.

**No background agent work pending** as of 2026-05-31 session close.

---

## 4. Mandatory close sequence (agent — end of session)

When author signals session end (`QUIT`, `SAVE LOCK`, `CLOSE`, etc.):

1. Finish or abort in-flight build; report exit code.
2. Write/update session lock (`TOC/CH02-SESSION-SAVE-LOCK.md`).
3. Sync `progress.md`, `00-FORWARD-MAP.yaml`, `LOCK-MANIFEST.md` addendum.
4. Remind author: **File → Save All** then close Cursor (agent cannot close IDE).
5. State resume command (after break **2026-06-06**): `GCHECK REFRESH DRAFT 3.0.1 — CH3-FRESH MIN-5PP ZERO-REPEAT`.

---

## 5. Resume sequence (next session — 2026-06-06)

1. Open repo in Cursor.
2. Read `START-HERE.md` (1 min).
3. Read `LOCK-MANIFEST.md` summer-break addendum (1 min).
4. Run full GCHECK read-set per `TOC/GCHECK-MASTER-CUMULATIVE.md` §1.
5. Issue: `GCHECK REFRESH DRAFT 3.0.1 — CH3-FRESH MIN-5PP ZERO-REPEAT`.

---

## 6. Author workflow locks (Ch. 3+ — same as Ch. 2)

| Lock | Value |
|------|--------|
| Review cadence | **Chapter-end audit only** |
| Draft command | `GCHECK REFRESH DRAFT … — CH3-FRESH MIN-5PP ZERO-REPEAT` (then Ch. 4) |
| Zero repetition | Full GCHECK stack + `forbidden_repeat` every subsection |

---

**END OF LOCKED DOCUMENT** — session close sync **2026-05-31** (summer break)
