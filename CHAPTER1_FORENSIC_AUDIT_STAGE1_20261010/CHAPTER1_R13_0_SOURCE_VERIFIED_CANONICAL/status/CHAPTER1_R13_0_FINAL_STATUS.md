# Chapter 1 R13.0 — delivery status

**Classification: B** — author-review candidate; not scientific-closure **A**

## Canonical artifacts

| Item | Path / SHA-256 |
|------|----------------|
| TeX | `source/CHAPTER1_R13_0_WORKING_CANDIDATE.tex` — `1EBA54C01642808820B4A8C56DE39ADF96E68D47B63936402D3B64AF8BBBE71D` |
| PDF | `pdf/CHAPTER1_R13_0_SOURCE_VERIFIED_CANDIDATE.pdf` — `8D47C2A9BC408C0E63D93618954582FCB4FF47EF7FC81C8A3C769F1146809FE7` |
| Pages | **57** (1,212,982 bytes) |
| Build | `build_package/BUILD_R13_0_FINAL.md` |

## Proof status summary

| Item | Status |
|------|--------|
| Exterior passive uniqueness | **QUALIFIED / CONDITIONAL** — M+N expansion corrected; Rellich hypothesis stated |
| Distributional dipole | **VERIFIED BY DERIVATION** (Lorenz gauge μ₀ term corrected; Hessian/PV language revised) |
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

