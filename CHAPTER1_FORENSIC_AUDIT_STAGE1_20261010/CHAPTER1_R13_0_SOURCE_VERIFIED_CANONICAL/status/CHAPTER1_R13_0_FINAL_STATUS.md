# Chapter 1 R13.0 — delivery status

**Classification: B** — author-review candidate; not scientific-closure **A**

## Canonical artifacts

| Item | Path / SHA-256 |
|------|----------------|
| TeX | `source/CHAPTER1_R13_0_WORKING_CANDIDATE.tex` — `2BF3301BC1C6B817380DBA6F657A371D98ECAFDEBD6896D1F16E03BB95CCF38B` |
| PDF | `pdf/CHAPTER1_R13_0_SOURCE_VERIFIED_CANDIDATE.pdf` — `83A4978DFDBCA255696874859E1421F37144C35DA2D33AF2399F0E3EFAE5B303` |
| Commit | `4f5f018` (batch C: Route B shell, Beth qual., \(Q_{\mathrm{vol}}\) domain) |
| Build | `build_package/BUILD_R13_0_FINAL.md` |

## Proof status summary

| Item | Status |
|------|--------|
| Exterior passive uniqueness | **QUALIFIED / CONDITIONAL** — M+N expansion corrected; Rellich hypothesis stated |
| Distributional dipole | **VERIFIED BY DERIVATION** (Hessian **sign corrected**; Lorenz μ₀; PV/contact language) |
| Antenna Q | **QUALIFIED** — \(Q_{\mathrm{vol}}\) total energy; Chu \(n=1\) reconstruction **OPEN** |
| Paraxial LG (Eq. 1.76) | **QUALIFIED / DEFERRED** — template only; no azimuthal Poynting claim |
| Maxwell stress & torque | **VERIFIED BY DERIVATION** (Route A; Route B two-surface shell Eqs. added) |
| Beth torque scales | **QUALIFIED** — \(P/\omega\) not from open-disk stress; primary paper OPEN |
| Helicity / gauge / duality | **QUALIFIED** (scope limited in text + dossier) |
| Modal \(m/\omega\) | **QUALIFIED** |
| Chu \(Q_{\mathrm{LB}}\) | **OPEN — CRITICAL** (no primary equation inspection) |
| Equation audit | **PARTIAL** (164 `eq:ch1.*` labels inventoried; row-level math not all checked) |
| Figures / tables visual | **OPEN** (29 `fig:ch1.*` in TeX; 0 pages visually audited at print resolution) |
| Literary integration | **OPEN** |
| Adversarial pass | **PARTIAL** (agent pass on critical fixes) |

## Validation executed

- `ch01_numeric_checks.py` — PASS
- `ch01_dipole_maxwell_checks.py` — PASS
- `ch01_equation_register.py` — 164 equation labels registered

## Git

Scoped branch commit attempted after this file is written (see execution report).

## Author decisions

- Confirm `exp(+jωt)` freeze
- Supply Chu primary PDF if \(Q_{\mathrm{LB}}\) must be **VERIFIED AGAINST PRIMARY SOURCE**
- Complete figure visual audit (author or follow-up run)

