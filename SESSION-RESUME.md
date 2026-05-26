# SESSION RESUME — UPDATE AT END OF EVERY SESSION (HOME + OFFICE)

> This file is the handoff between machines.
> Whoever finishes last updates this file, then `git add -A && git commit && git push`.

---

## Last session

| Field | Value |
|-------|--------|
| Date | 2026-05-26 |
| Machine | Home (pushed to `origin/main`) |
| Branch | `main` |
| Latest commit | `86aa37c` |

---

## Where to continue (NEXT)

| Field | Value |
|-------|--------|
| Volume | I |
| Chapter | 1 |
| Next subsection | **SS1.1.1** — Maxwell equations: differential, integral, vacuum constitutive relations `[HOME]` |
| LaTeX location | `latex/ch01.tex` at `\label{sec:ch111}` |
| TOC authority | `TOC/TOC-master-19chapters-ULTIMATE-V3-forward-only.txt` |

---

## Last completed (DONE — do not re-draft)

| Sec ID | Status | File |
|--------|--------|------|
| 1.0.1 | Drafted | `latex/ch01.tex` (`sec:ch101`) |
| 1.0.2 | Drafted | `latex/ch01.tex` (`sec:ch102`) |
| 1.0.3 | Drafted | `latex/ch01.tex` (`sec:ch103`) |

---

## Session start ritual (any machine)

1. `git pull --rebase origin main`
2. Read this file (`SESSION-RESUME.md`)
3. Read `LOCK-MANIFEST.md` and `00-NOTATION.md`
4. Continue only at the NEXT subsection listed above

---

## Session end ritual (any machine)

1. Save all edited files
2. Update this file (date, machine, completed subsection, next subsection)
3. Update `progress.md`
4. Run:

```powershell
git add -A
git commit -m "Session YYYY-MM-DD: <home|office> through SSx.y.z"
git push
```

---

## Notes

- Keep forward-only drafting: no recursion, no re-derivation of prior HOME proofs.
- If office and home differ, latest pushed commit + this file are the source of truth.
