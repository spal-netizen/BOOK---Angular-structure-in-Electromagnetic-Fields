"""R13.1 patch: distributional curl pairing uses plus sign (no ⟨E,-curl ψ⟩)."""
from __future__ import annotations

import re
import sys
from pathlib import Path

TEX = Path(__file__).resolve().parents[1] / "source" / "CHAPTER1_R13_0_WORKING_CANDIDATE.tex"


def main() -> int:
    text = TEX.read_text(encoding="utf-8", errors="replace")
    if re.search(r"\\langle\\E,-\\curl\\boldsymbol\\psi\\rangle", text):
        print("FAIL: Faraday weak-form uses wrong minus on curl pairing")
        return 1
    if not re.search(
        r"\\langle\\curl\\mathbf F,\\boldsymbol\\psi\\rangle=\\langle\\mathbf F,\\curl\\boldsymbol\\psi\\rangle",
        text,
    ):
        print("FAIL: curl self-adjoint pairing statement missing")
        return 1
    if not re.search(r"\\langle\\curl\\H,\\boldsymbol\\psi\\rangle=\\langle\\H,\\curl\\boldsymbol\\psi\\rangle", text):
        print("FAIL: Ampère-Maxwell weak-form curl pairing missing")
        return 1
    print("OK: distributional curl pairing signs")
    return 0


if __name__ == "__main__":
    sys.exit(main())
