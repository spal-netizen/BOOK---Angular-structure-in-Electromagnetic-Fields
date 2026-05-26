from pathlib import Path
import re

root = Path(r"c:\Users\arghy\Downloads\BOOK - Angular structure in Electromagnetic Fields")
inp = root / "TOC" / "TOC-master-19chapters-ULTIMATE-FINAL.txt"
outp = root / "TOC" / "TOC-master-19chapters-ULTIMATE-V3-forward-only.txt"

lines = inp.read_text(encoding="utf-8").splitlines()

statement_verbs = [
    "Axiomatic frame",
    "Governing statement",
    "Foundational specification",
    "Formal setup",
    "Constitutive declaration",
    "Operator-level setup",
    "Admissibility map",
    "Problem-space declaration",
]
proof_verbs = [
    "Derivation chain",
    "Proof architecture",
    "Construction pathway",
    "Analytical development",
    "Theorem route",
    "Reduction sequence",
    "Operator derivation",
    "Spectral development",
]
interpret_verbs = [
    "Physical meaning",
    "Interpretive scope",
    "Observable consequence map",
    "Validity boundary",
    "Regime interpretation",
    "Measurement-facing meaning",
    "Constraint interpretation",
    "Phenomenological reading",
]
forward_verbs = [
    "Forward inheritance link",
    "Dependency continuation",
    "Next-step consequence",
    "Bridge to subsequent machinery",
    "Carry-forward implication",
    "Downstream analytical handoff",
    "Later-use inheritance pointer",
    "Continuation criterion",
]

intro_triplet = [
    "Scope boundary and admissibility assumptions for {sec}",
    "Inherited prerequisites and resolved back-references for {sec}",
    "Forward roadmap from {sec} into proof-bearing subsections",
]

summary_triplet = [
    "Established outcomes consolidated for this chapter",
    "Deferred material registry under strict HOME/USE discipline",
    "Forward bridge into the next chapter without re-derivation",
]

example_quad = [
    "Canonical benchmark on {sec}: complete mathematics and closure checks",
    "Boundary-regime benchmark on {sec}: asymptotic behavior and admissibility",
    "Reconstruction or conditioning benchmark on {sec}: inherited operator use",
    "Physical-significance benchmark on {sec}: measurable consequences only",
]

ch_title = ""
ch_num = None

def split_tags(txt: str):
    m = re.match(r"^(.*?)(\s*(\[[^\]]+\])(?:\[[^\]]+\])*)?$", txt.strip())
    body = (m.group(1) if m else txt).strip()
    tags = (m.group(2) if m and m.group(2) else "").strip()
    return body, tags

out = []
out.extend([
    "# ===============================================================================",
    "# ULTIMATE TOC VERSION-3 (strict forward-only redraft)",
    "# Source: TOC-master-19chapters-ULTIMATE-FINAL.txt",
    "# Policy: zero re-derivation; inherited back-reference only; HOME/USE/DEFER preserved.",
    "# ===============================================================================",
    "",
])

section_count = 0
sub_count = 0

for line in lines:
    s = line.rstrip("\n")
    if not s:
        out.append("")
        continue
    if s.startswith("#"):
        if s.startswith("# END"):
            continue
        out.append(s)
        continue

    m_ch = re.match(r"^Chapter\s+(\d+)\s+-\s+(.+)$", s)
    if m_ch:
        ch_num = int(m_ch.group(1))
        ch_title = m_ch.group(2).strip()
        out.append(s)
        continue

    m_sec = re.match(r"^(\d+)\.(\d+)\s+(.+)$", s)
    if not m_sec:
        out.append(s)
        continue

    c = int(m_sec.group(1))
    sec = int(m_sec.group(2))
    sec_text_raw = m_sec.group(3).strip()
    sec_text, sec_tags = split_tags(sec_text_raw)
    out.append(f"{c}.{sec} {sec_text} {sec_tags}".rstrip())
    section_count += 1

    # Section synthesis / chapter summary
    if "synthesis and forward map" in sec_text.lower():
        for i, t in enumerate(summary_triplet, start=1):
            out.append(f"{c}.{sec}.{i} {t} [DEFER]")
            sub_count += 1
        out.append("")
        continue

    # Intro sections
    if sec == 0:
        for i, t in enumerate(intro_triplet, start=1):
            out.append(f"{c}.{sec}.{i} {t.format(sec=sec_text)} {sec_tags}".rstrip())
            sub_count += 1
        out.append("")
        continue

    # Examples sections
    if "worked problems" in sec_text.lower() or "examples" in sec_text.lower():
        for i, t in enumerate(example_quad, start=1):
            out.append(f"{c}.{sec}.{i} {t.format(sec=sec_text)} {sec_tags}".rstrip())
            sub_count += 1
        out.append("")
        continue

    idx = (c * 31 + sec) % len(statement_verbs)
    a = statement_verbs[idx]
    b = proof_verbs[(idx + 2) % len(proof_verbs)]
    d = interpret_verbs[(idx + 4) % len(interpret_verbs)]
    e = forward_verbs[(idx + 6) % len(forward_verbs)]

    out.append(f"{c}.{sec}.1 {a} for {sec_text} under {ch_title} {sec_tags}".rstrip())
    out.append(f"{c}.{sec}.2 {b} for {sec_text} using inherited prior results only {sec_tags}".rstrip())
    out.append(f"{c}.{sec}.3 {d} for {sec_text} with explicit validity limits {sec_tags}".rstrip())
    out.append(f"{c}.{sec}.4 {e} from {sec_text} to downstream sections and chapters {sec_tags}".rstrip())
    sub_count += 4
    out.append("")

out.extend([
    "# ===============================================================================",
    f"# Sections: {section_count}",
    f"# Subsections (x.y.z): {sub_count}",
    "# ===============================================================================",
])

outp.write_text("\n".join(out) + "\n", encoding="utf-8")
print(f"Generated: {outp}")
print(f"Sections: {section_count}")
print(f"Subsections: {sub_count}")
