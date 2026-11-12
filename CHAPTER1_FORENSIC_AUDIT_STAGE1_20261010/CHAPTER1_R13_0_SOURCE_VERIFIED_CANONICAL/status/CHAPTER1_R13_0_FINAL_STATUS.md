# Chapter 1 R13.0 — delivery status

**Classification: B** — author-review candidate; not scientific-closure **A**

## Canonical artifacts

| Item | Path / SHA-256 |
|------|----------------|
| TeX | `source/CHAPTER1_R13_0_WORKING_CANDIDATE.tex` — `676ECCC9B9F82DBC32D8A824F4B769372D90EB1D8CF097F1AE1C4D9632ECCA68` |
| PDF | `pdf/CHAPTER1_R13_0_SOURCE_VERIFIED_CANDIDATE.pdf` — `AA2BF6BAEA7932385701CC3D5FD8629BE4DF8A26A6E4C4528C19AFA2500BB8D5` |
| Pages | **56** (1,207,207 bytes) |
| Build | `build_package/BUILD_R13_0_FINAL.md` |

## Proof status summary

| Item | Status |
|------|--------|
| Exterior passive uniqueness | **QUALIFIED / CONDITIONAL** — M+N expansion corrected; Rellich hypothesis stated |
| Distributional dipole | **VERIFIED BY DERIVATION** |
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

