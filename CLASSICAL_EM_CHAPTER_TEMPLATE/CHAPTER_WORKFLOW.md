# Chapter workflow (Chapters 2–4 accelerated mode)

Reuse Chapter 1's **protocols**, not its forensic timeline.

## Bounded sequence

1. Inspect chapter TOC, `00-FORWARD-MAP.yaml`, and existing `latex/chNN.tex` stub.
2. Freeze convention register (phasor, outgoing, normals)—diff against `SCIENTIFIC_CONVENTIONS.md`.
3. List HOME results vs `[USE]` / `[DEFER]` from TOC.
4. Extract primary-source equations for HOME items only.
5. One integrated correction pass for evidenced defects.
6. Integrate prose (section intros + subsections; no audit voice).
7. Equation + **print-size figure** audit registers (every figure inspected on rendered PDF pages—not contact-sheet approval alone).
8. **Independently solve** every numerical exercise in the problem set.
9. Run chapter validation scripts + read PDF of changed pages.
10. Build clean PDF; record SHA-256 manifest.
11. One adversarial verification pass; **lock** chapter; stop unless a new contradiction appears.

## Explicitly excluded

- Open-ended R-series cycles
- Scope expansion “to sound more classical”
- Mechanical length matching Chapter 1 page count

## Reopen criteria

Only when:

- A primary source contradicts a displayed equation, or
- A build regression demonstrates Maxwell inconsistency, or
- Author supplies new authenticated source material.
