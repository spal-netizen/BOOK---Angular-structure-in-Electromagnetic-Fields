"""Extract equation and label inventory from canonical Ch.1 TeX (R13)."""
from __future__ import annotations

import re
from pathlib import Path

TEX = Path(__file__).resolve().parents[1] / "source" / "CHAPTER1_R13_0_WORKING_CANDIDATE.tex"
OUT = Path(__file__).resolve().parents[1] / "audit" / "EQUATION_AUDIT_REGISTER.csv"

LABEL_RE = re.compile(r"\\label\{([^}]+)\}")
BEGIN_EQ = re.compile(r"\\begin\{(equation|align|subequations)\}")


def main() -> None:
    text = TEX.read_text(encoding="utf-8", errors="replace")
    labels = sorted(set(LABEL_RE.findall(text)))
    eq_labels = [l for l in labels if l.startswith("eq:ch1.")]
    fig_labels = [l for l in labels if l.startswith("fig:ch1.")]
    lines = ["kind,id,source_line_hint,status,notes"]
    for lab in eq_labels:
        lines.append(f"equation,{lab},TEX,,DERIVED_OR_CITED_PENDING_ROW_AUDIT")
    for lab in fig_labels:
        lines.append(f"figure,{lab},TEX,,VISUAL_OPEN")
    OUT.write_text("\n".join(lines) + "\n", encoding="utf-8")
    print("eq_labels", len(eq_labels), "fig_labels", len(fig_labels), "total_labels", len(labels))
    print("wrote", OUT)


if __name__ == "__main__":
    main()

