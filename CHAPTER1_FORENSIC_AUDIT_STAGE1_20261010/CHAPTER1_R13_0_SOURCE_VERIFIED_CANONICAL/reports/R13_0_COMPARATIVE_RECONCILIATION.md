# R13.0 comparative reconciliation (R10.3 vs R12.0 vs R12.1 baseline)

**Audit PDFs (immutable evidence)**

| Release | SHA-256 | Pages |
|---------|---------|-------|
| R10.3 `CHAPTER1_R10_3_FINAL_AUTHORIAL_MASTER.pdf` | `8F2850C3633FF3F7139E9ADD23D7632442EC35A1BB5344C27B5FCBACDF289B1B` | 55 |
| R12.0 `CHAPTER1_R12_0_LATEST_AUTHOR_REVIEW.pdf` | `8570407F830090C9EA418253E761E7F576E1E5DB2E4F914BFF462DAED66312B4` | 55 |
| R12.1 candidate (pre-R13 seed) | `B2A7183EE10456713CDC8DC6BA976F284D50FCB75AF73C6B0793EE40E6626D43` | 55 |

**Editable baseline for R13**

- Seed TeX: `CHAPTER1_R12_1_FINAL_AUTHOR_REVIEW.tex` (SHA `47214861…`) = FREEZE advanced R10.3 + R12.0 lossy fix + dipole Gauss correction + TE₁₀ notation + four-step exterior uniqueness (not R12.0 regression).
- Advanced TeX surrogate when author `CHAPTE~1.TEX` absent: `UPLOADED_ADVANCED_R10_3_FREEZE.tex` (SHA `E2107C8A…` per R12.1 manifest).

## Regressions in R12.0 (do not adopt)

| Topic | R10.3 / R12.1 | R12.0 | Decision |
|-------|---------------|-------|----------|
| Exterior passive uniqueness | Four-step outgoing continuation closes homogeneous $\Delta\E=\Delta\H=\mathbf{0}$ in stated class | Energy identity only; Rellich step deferred / “not proved here” | **Keep R10.3/R12.1** |
| Equatorial ring continuity | $(1/a)\partial I/\partial\phi+j\omega\lambda=0$ with line vs sheet distinction | Thinner / conflated units in intermediate trees | **Keep R12.1** |
| Poynting 1884 vs stress AM | Energy flux only in historical Poynting passage; stress-moment transport separate | Weaker or blended attribution in some R12.0 snapshots | **Keep R12.1** (line ~1173) |

## Improvements retained from R12.0 / R12.1

| Topic | Change |
|-------|--------|
| Lossy passive domain | Local uniqueness route in §1.1.3 (R12.0 Batch 1) |
| Dipole Gauss | Remove false claim that $k^2 G\mathbf{p}$ supplies isotropic $\delta^3$ for Gauss |
| TE₁₀ example | $\omega_c=\pi c/a$ vs $f_c=c/(2a)$ |
| Dipole $kr$ example | $kr\approx 3.1$ at 300 MHz, $r=0.5$ m vs qualitative $kr\sim 1$ language |

## Mandatory closure status entering R13

| ID | Requirement | R13 batch | Status |
|----|-------------|-----------|--------|
| D1 | Full distributional dipole (all Maxwell rows + gauge + continuity) | 3 | **Expanded** in §1.6.4 (Eqs. faraday/ampere distributional) + dossier |
| D2 | Exterior impedance uniqueness audit | 4 | **Present** (four-step); Colton full text **not inspected** |
| D3 | Ring-current model | 5 | **Closed** in text |
| D4 | Poynting historical | 6 | **Closed** in text |
| D5 | Chu modal $Q$ vs $Q_{\mathrm{adopted}}$ | 7 | **Distinguished** in text; Chu MIT/JAP **not equation-verified** |
| D6 | Dipole numerics | 8 | **Script PASS** (`ch01_numeric_checks.py`) |
| D7 | Whole-chapter equation audit | 9–16 | **Open** |

## PDF–source provenance

- R10.3 PDF hash `8F2850C3…` matches CHECKPOINT BATCH_04 build of `CHAPTER1_R10_3_FINAL_AUTHORIAL_MASTER.tex` in forensic tree (post Batch 04 edits).
- R12.0 PDF built from `CHAPTER1_R12_0_FINAL_AUTHOR_REVIEW.tex` (batch 01 lossy edit; uniqueness regression relative to Batch 04 R10.3).
- R12.1/R13 TeX is **not** bitwise identical to either PDF; authoritative working source is the R13 canonical `.tex` after fresh build.

