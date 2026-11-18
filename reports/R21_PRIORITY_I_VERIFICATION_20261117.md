# R21 — Priority I audit vs live source (2026-11-17)

**Benchmark PDF:** `VOLUME_I_RELEASE/CHAPTER1_BENCHMARK_A05B9CCE.pdf` (62 pp)  
**Author review PDF:** `VOLUME_I_RELEASE/CHAPTER1_AUTHOR_REVIEW_20261117.pdf` (74 pp, rebuild from `latex/main-ch01-only.tex`)

| ID | Requirement | Live `ch01.tex` / problems | In 20261117 PDF? |
|----|-------------|---------------------------|------------------|
| 4.1 | Abraham symmetric; Minkowski generally nonsymmetric; EM vs material split | §1.0.1, §1.1.5 cites `abraham1909`, `minkowski1908` | **Yes** (rebuild reflects source) |
| 4.2 | \(\Lambda_\ell\) for VSH; \(\sigma\) helicity only; \(\rho_s\) surface charge | `00-NOTATION.md`; problems 6(b) uses \(\Lambda_\ell\); `\sigmahel` in macros | **Mostly** — audit all legacy `\sigma` in equations during M3 grep |
| 4.3 | Instantaneous vs cycle-average AM; steady \(\partial_t\langle\mathbf j\rangle=0\) | Eqs. `angular-balance-integral`, `angular-balance-cycle-average` §1.1.5 | **Partial** — full shell \(M^{(i)}\) restatement not duplicated verbatim; physics path present |
| 4.4 | \(z_n(p)\) vs \(Z_n^{\mathrm{SI}}=\eta_0 z_n\) | §1.6.4 explicit | **Yes** |
| 4.5 | Dipole \(r^{-n}\) not universal multipole law | After `dipole-fields-explicit`, magnetic-dipole caveat | **Yes** |
| 4.6 | No stale 1 GHz vs 300 MHz | No `1 GHz` in `ch01.tex`; 300 MHz shells in §1.6.3–4 | **Yes** (§1.6.1 still uses 10 GHz worked example — intentional far-zone Beth extension) |
| 4.7 | Abraham 1909 | `\cite{abraham1909}`; bib `abraham1909` | **Verify PDF ref list** — drop spurious `abraham1910` cites if any remain in PDF |
| 4.7–8 | Problems 6(c), 7(b), 7(c), 8 | 6(b) VSH; 7(b) assumptions only; 7(c) helicity density; 8 **expanded this pass** (Fresnel/Fraunhofer) | **7(b)/(8) improved in source; re-PDF required** |
| 4.8 | No unproved modal theorem in Ch.1 | `ex61-helicity-transport-law` scoped; Ch.3 handoff in §1.6.1 | **Yes** |
| 11.1 | “Following chapter” not volume | §1.7 forward map uses `Chapter~\ref{ch:02}` | **Yes** |
| 6.x | No bookkeeping/ledger/gate prose | Grep clean on `ch01.tex` | **Yes** |

## Not yet at classical-monograph bar (Priority II–V)

- Full exterior uniqueness proof closure (B1)  
- Figure redraws 1.25, 1.30, etc. (Priority IV)  
- Beth-led opening reconstruction (Priority III)  
- Complete subsection GCHECK §1.0–§1.7 (R17)  
- Equation-level primary-source concordance (§9.4)

## PDF hygiene

Rebuild: `latex/build-ch01-review.ps1` or `latexmk -pdf main-ch01-only.tex` (×2).