# Volume I — Independent classical transformation audit (Chapters 2–4)

**Date:** 2026-11-14  
**Scope:** Parts C–G of the author master directive (scientific diagnosis, not rewrite text)  
**Chapter 1:** **Frozen** — authoritative PDF `C:\Users\S.Pal\Downloads\main-ch01-only.pdf` (62 pp), SHA-256 `A05B9CCEFDE2E57C7D30937857994BF8B3CFA2E29A531273AF7E582ED307740E`; tag `chapter1-benchmark-20261114-a05b9cce`. The 74-page Ch.1 inside the split Volume-I author-review PDFs is **historical only**.

**Detailed Stage A ledger:** `VOLUME_I_CHAPTERS_2_TO_4_INDEPENDENT_TRANSFORMATION_AUDIT.md` (repository map, convention conflict, figure defects, transformation plan).

**Stage B in progress:** branch `volume-i/ch2-4-coordinated-transformation`; convention register `VOLUME_I_PHASOR_AND_NOTATION_STANDARD.md`; conversion register `VOLUME_I_CONVENTION_CONVERSION_REGISTER.md`.

---

## 1. Integrated intellectual progression (author target)

| Chapter | Scientific obligation |
|---------|----------------------|
| **1 (frozen)** | Maxwell data, conservation, angular transport, observables — **benchmark voice and \(e^{+\mathrm{j}\omega t}\)**. |
| **2** | Admissible sources → Maxwell BVP → Green/radiation integrals → outgoing asymptotics → **only then** solution/radiation maps; spectral/nullity with stated operators and norms. |
| **3** | Rotations on **vector** Maxwell fields → generators → VSH/multipoles as **coupled** eigenfields → normalization tied to flux inner product. |
| **4** | Bounded-source coupling to radiative coefficients → **tolerance-dependent** effective rank → measurement vs realizability → no universal “finite support ⇒ hard \(L\) cutoff” without geometry. |

Each chapter must inherit prior results by citation; unproved Ch.2 operator claims must not prop up Ch.3–4 theorems.

---

## 2. Cross-cutting defects (must survive rewrite)

### 2.1 \(\mathcal{R}_\omega = \Pi_{\mathrm{rad}}\circ\mathcal{S}_\omega\) (Chapter 2)

**Finding:** \(\Pi_{\mathrm{rad}}\) is often described like an orthogonal projection on \(\mathcal{F}_\Omega\). **Not established:** Hilbert decomposition, idempotence, or removal of reactive fields by a single linear map on the full near+far field.

**Required correction:** Define \(\mathcal{S}_\omega\) as the Maxwell solution map under stated BVP. Define radiation **data** as far-zone asymptotics (or equivalent stress integral on \(\Gamma_R\) with explicit \(R\) regime). Treat \(\Pi_{\mathrm{rad}}\), if retained, as an **asymptotic extraction** on a declared subspace—not a global projector—unless proved.

**Disposition:** Rewrite §2.0–2.1 (done in Stage B opening), tighten §2.4–2.9 and null-space sections.

### 2.2 Functional analysis claims (Chapter 2)

**Finding:** Compactness, Fredholm, self-adjointness, and “finite rank of measurement” appear without uniform domain/codomain, norm, and compact embedding hypotheses.

**Required correction:** Each claim tagged with operator, spaces, norm, boundary class; remove or downgrade to conjecture where proof is absent.

### 2.3 Vector spherical harmonics (Chapter 3)

**Finding:** Risk of scalar-envelope eigenrelations decoupled from Maxwell; sign/normalization may follow legacy \(e^{-\mathrm{j}\omega t}\).

**Required correction:** Re-derive \(\mathbf{M}_{\ell m},\mathbf{N}_{\ell m}\) pairs under Volume I phasor standard; verify \(\nabla\times\) identities and outgoing \(h_\ell^{(1)}\) choice **with** Ch.1.

### 2.4 Effective rank and realizability (Chapter 4)

**Finding:** Effective rank sometimes presented as intrinsic integer from bounded support alone.

**Required correction:** State radiation or coupling operator, domain/codomain, SV threshold, noise/calibration; distinguish \(\mathcal{S}_{\mathrm{real}}\), \(\mathcal{E}_{\mathrm{acc}}^{(N)}\), and instrument null spaces.

### 2.5 Figures and assets

- **Fig. 4.2:** missing asset in built Ch.4 PDF (Stage B: recover or redraw at first Ch.4 edit).
- Ch.2–3: audit placeholder figures and VolIFigInclude slugs.

### 2.6 Editorial machinery

Remove Stage 8–11 comments, PHYSICAL-MEMORY blocks, roadmap bullets, and process vocabulary from published text (retain science-only qualifications).

---

## 3. Convention (resolved in Stage B for editable volume)

**Volume rule:** \(e^{+\mathrm{j}\omega t}\), \(\partial_t\to+\mathrm{j}\omega\), Maxwell curls as Ch.1 `eq:ch1.maxwell-local`, continuity \(\nabla\cdot\mathbf{J}+\mathrm{j}\omega\rho=0\).

**Not mechanical:** outgoing spatial phase \(e^{-\mathrm{j}k_0 R}\), Green function \(G_0\), and Laplace axis \(s=+\mathrm{j}\omega\) were checked item-by-item (`VOLUME_I_CONVENTION_CONVERSION_REGISTER.md`).

---

## 4. Transformation execution status

| Workstream | Status |
|------------|--------|
| Ch.1 protect / tag / push | **Complete** (manifest in `CHAPTER1_BENCHMARK_MANIFEST.txt`) |
| Independent audit (this + Stage A file) | **Complete** (diagnosis record) |
| Convention lock (macros, front matter, Ch.2 preamble) | **Committed** (Stage B) |
| Ch.2 §2.0–2.2 Maxwell-first + phasor pass (key fragments) | **Started** |
| Ch.2 remainder + Ch.3 + Ch.4 rewrite | **Pending** |
| Fig. 4.2 | **Pending** (early Ch.4) |
| Adversarial closure ×3 | **Pending** after rewrite |
| Combined Vol. I PDF with frozen Ch.1 | **Pending** |

---

## 5. Historical manuscript PDFs (reference only)

`Volume-I-Author-Review_SPLIT 4 CHAPTERS/Volume-I-Author-Review-*.pdf` — use for architecture and lost prose, **not** to override latest Ch.1 or benchmark conventions.

---

*This document satisfies the master directive audit deliverable name; the expanded defect inventory lives in `VOLUME_I_CHAPTERS_2_TO_4_INDEPENDENT_TRANSFORMATION_AUDIT.md`. Rewriting continues without a further approval gate.*