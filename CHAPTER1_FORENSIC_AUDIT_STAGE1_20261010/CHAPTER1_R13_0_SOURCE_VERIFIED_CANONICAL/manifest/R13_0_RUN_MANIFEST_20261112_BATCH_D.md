# R13.0 run manifest — Batch D (2026-11-12)

| Item | Value |
|------|--------|
| Branch | `chapter1/r13.0-canonical` |
| Pre-edit HEAD | `3008a7d` |
| Scope | Route B shell closure, sign ledger, Q_vol `P_rad(R)`, Beth primary pp.1–5, dossiers, `ch01_qvol_shell_check.py` |

## SHA-256 (post-edit, post-build)

| Artifact | SHA-256 |
|----------|---------|
| `source/CHAPTER1_R13_0_WORKING_CANDIDATE.tex` | `8CA8566B5A08B67ACD0DDF505D7F3846A7326465E719FE6561D3FDA254144B0C` |
| `build_package/main-ch01-only.pdf` | `BA16DA7D7B99A886E607A47802A4CDBB0237183EBE98AFA30B5E4408825D5237` |

## Tests (2026-11-12)

- `validation/ch01_qvol_shell_check.py` — PASS
- `validation/ch01_hessian_sign_check.py` — PASS
- `validation/ch01_dipole_maxwell_checks.py` — PASS
- `validation/ch01_numeric_checks.py` — not re-run this batch

## Classification

**B — SUBSTANTIAL BUT NOT CLOSED** (Chu n=1 main-text reconstruction, full equation register, figure PDF audit, adversarial pass remain OPEN)
