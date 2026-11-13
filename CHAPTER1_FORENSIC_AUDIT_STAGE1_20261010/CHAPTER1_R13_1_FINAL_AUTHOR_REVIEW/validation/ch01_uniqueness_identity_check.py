"""R13.1 patch: lossless S_delta identity must be labeled real-epsilon; complex form separate."""
from __future__ import annotations

import re
import sys
from pathlib import Path

TEX = Path(__file__).resolve().parents[1] / "source" / "CHAPTER1_R13_0_WORKING_CANDIDATE.tex"


def main() -> int:
    text = TEX.read_text(encoding="utf-8", errors="replace")
    # lossless block must mention real epsilon before eq ch1.uniqueness-local-div
    idx = text.find("eq:ch1.uniqueness-local-div")
    block = text[max(0, idx - 800) : idx + 200]
    if "real" not in block.lower() and "Lossless" not in block:
        print("FAIL: lossless identity not scoped to real eps/mu before label")
        return 1
    if "complex-medium identity" not in text or "lossless" not in text.lower():
        print("FAIL: missing explicit lossless-only disclaimer on uniqueness-local-div")
        return 1
    if "eq:ch1.uniqueness-local-div-complex" not in text:
        print("FAIL: complex-medium identity label missing")
        return 1
    # bad: derive lossless with curl H^* and complex epsilon in same sentence without lossless header
    bad = re.search(
        r"when \$\\varepsilon\$ is complex, yields[\s\S]{0,120}eq:ch1\.uniqueness-local-div",
        text,
    )
    if bad:
        print("FAIL: complex epsilon still tied to lossless local-div derivation")
        return 1
    print("OK: uniqueness lossless/lossy separation")
    return 0


if __name__ == "__main__":
    sys.exit(main())
