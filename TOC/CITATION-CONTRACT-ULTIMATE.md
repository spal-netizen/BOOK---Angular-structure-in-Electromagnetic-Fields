# Citation Contract (Ultimate Lock)

Citation governance is chapter-wise and mandatory.

## Global rule

For each nontrivial claim, theorem, operator construction, asymptotic law, or physical interpretation:

- cite one pioneering/original source where the idea was first formalized, and
- cite one modern validated source (or modern verification) where applicable.

Both citations must be placed at the exact sentence where the claim is used.

## Chapter-wise citation intent

- Chapters 1-4: foundational electromagnetics, operator theory, spectral representation, realizability.
- Chapters 5-8: canonical radiation mechanisms, arrays, apertures, metasurface operator formulations.
- Chapters 9-12: propagation in free/linear/random media and field-matter exchange.
- Chapters 13-16: detection, estimation, information limits, communication and sensing systems.
- Chapters 17-19: observational interpretation, judgment under assumptions, and open problems.

## Placement and quality rules

- No citation dumping at paragraph ends when claims are sentence-local.
- No invented references; use keys present in `latex/references.bib` or mark `[CITATION NEEDED]`.
- When a chapter `USE`s a theorem from another chapter, cite both the internal `HOME` section and external literature where needed.
- Claims labeled as open, speculative, or regime-dependent must include explicit assumption qualifiers and corresponding references.

## Fail conditions

A subsection fails citation review if any of the following occurs:

- a theorem-like statement has no citation support,
- only modern secondary literature is cited for a classical foundational claim,
- only pioneering literature is cited for a modern implementation-limited claim,
- citation appears away from the sentence that actually needs support.

---

## Chapter 1 locked citation set (body text, 2026-05-29)

Chapter 1 running citations use **seminal/pioneering keys only** (no textbook keys in body cites):

| Key | Role in Ch. 1 |
|-----|----------------|
| `maxwell1873` | Maxwell equations, field laws |
| `poynting1884` | Energy transport |
| `stratton1941` | Canonical EM formulation context |
| `belinfante1940` | Symmetric stress tensor / spin-orbit split |
| `beth1936` | Optical torque / spin angular momentum |
| `allen1992` | Orbital angular momentum of light (with gauge caveats from §1.4) |
| `chu1948` | Absorbing boundary / admittance |
| `abraham1910` | Momentum density (Abraham form) |
| `minkowski1908` | Momentum density (Minkowski form) |

Chapter 2+ follows the same **seminal → classical → validated modern** hierarchy with keys appropriate to operator/radiation content; Ch. 1 keys are **USE by reference** only — do not re-cite as if re-establishing HOME results.
