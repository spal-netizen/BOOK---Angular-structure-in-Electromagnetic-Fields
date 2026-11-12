# Chapter 1 R13.0 — delivery status

**Classification: B** — author-review candidate; not scientific-closure **A**

## Canonical artifacts

| Item | Path / SHA-256 |
|------|----------------|
| TeX | `source/CHAPTER1_R13_0_WORKING_CANDIDATE.tex` — `4DD879484B0C351DCB99A2016ECE7705E28BBF6763A09FCF84362B0E80CCA6B5` |
| PDF | `pdf/CHAPTER1_R13_0_SOURCE_VERIFIED_CANDIDATE.pdf` — `9C10BFE970069496A2D2C5BE1AE40B982337879D5DE06A2F6FB63D429E4401A6` |
| Pages | **57+** (1,217,162 bytes; +2 Hessian display equations) |
| Build | `build_package/BUILD_R13_0_FINAL.md` |

## Proof status summary

| Item | Status |
|------|--------|
| Exterior passive uniqueness | **QUALIFIED / CONDITIONAL** — M+N expansion corrected; Rellich hypothesis stated |
| Distributional dipole | **VERIFIED BY DERIVATION** (Hessian **sign corrected**; Lorenz μ₀; PV/contact language) |
| Antenna Q | **QUALIFIED** — \(Q_{\mathrm{vol}}\) total energy; Chu \(n=1\) reconstruction **OPEN** |
| Paraxial LG (Eq. 1.76) | **QUALIFIED / DEFERRED** — template only; no azimuthal Poynting claim |
| Maxwell stress & torque | **VERIFIED BY DERIVATION** (dossier; manuscript cites result) |
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

