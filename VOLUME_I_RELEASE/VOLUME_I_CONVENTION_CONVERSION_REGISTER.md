# Volume I — Convention Conversion Register (Stage B)

**From:** legacy `exp(-\mathrm{j}\omega t)` / \(\partial_t\to-\mathrm{j}\omega\) (Ch. 2–4 drafts, old `00-NOTATION.md`, `latex/macros.tex`)  
**To:** Chapter 1 benchmark `exp(+\mathrm{j}\omega t)` / \(\partial_t\to+\mathrm{j}\omega\)

| ID | Location | Original | Corrected | Verification | Status |
|----|----------|----------|-----------|--------------|--------|
| C-01 | `latex/macros.tex` `\eim` | `e^{-\mathrm{j}\omega t}` | `e^{+\mathrm{j}\omega t}` | Match `CHAPTER1_R13_0_WORKING_CANDIDATE.tex` | **applied** |
| C-02 | `latex/ch02-stage9-preamble.tex` | \(\partial_t\to-\mathrm{j}\omega\) | \(+\mathrm{j}\omega\) | Ch. 1 time rule | **applied** |
| C-03 | `latex/frontmatter.tex` copyright line | `exp(-\mathrm{j}\omega t)` | `exp(+\mathrm{j}\omega t)` | Author lock | **applied** |
| C-04 | `00-NOTATION.md` §Time | \(-\mathrm{j}\omega t\) rule | \(+\mathrm{j}\omega t\) rule | Superseded by this register + Ch. 1 | **applied** |
| C-05 | `eq:ch2.frequency-substitution-rule` (`restore-orig-012`) | \(\partial_t\to-\mathrm{j}\omega\) | \(+\mathrm{j}\omega\) | \(\partial_t \mathrm{e}^{+\mathrm{j}\omega t}\) | **applied** |
| C-06 | Charge continuity in `part01-source-and-harmonic-maxwell.tex` | `\divg\Jimp-\jj\omega\rho` | `\divg\Jimp+\jj\omega\rho` | `eq:ch1.charge-continuity-harmonic` | **applied** |
| C-07 | `eq:ch2.free-space-scalar-green` | \(e^{-\mathrm{j}k_0 R}/(4\pi R)\) | unchanged | Ch. 1 outgoing trace + Helmholtz | **verified unchanged** |
| C-08 | `eq:ch1.maxwell-local` curls | \(-\mathrm{j}\omega\), \(+\mathrm{j}\omega\) on \(\mathbf{D}\) | unchanged | Ch. 1 benchmark | **verified unchanged** |
| C-09 | Prose `\exp(-\mathrm{j}\omega t)` in `ch02-classical/restored/*` | legacy text | \(\eim\) / \(+\mathrm{j}\omega t\) | Per-file read | **in progress** |
| C-10 | `latex/ch03.tex`, `latex/ch04.tex` | legacy \(-\mathrm{j}\omega t\) | benchmark convention | VSW, rank, synthesis | **pending** |
| C-11 | Dyadic \(\mathbf{G}^E\), impedance \(\eta_0\) relations | TBD | re-derive from C-01–C-08 | Operator + Green chapter | **pending** |
| C-12 | VSW \(\nabla\times\mathbf{M}\), \(\nabla\times\mathbf{N}\) (Ch. 3) | legacy | coupled Maxwell under C-01 | Ch. 3 rewrite | **pending** |

**Safeguard:** No repository-wide `-j`→`+j` replace on equation bodies. Each row above requires independent check or explicit “unchanged” reason.