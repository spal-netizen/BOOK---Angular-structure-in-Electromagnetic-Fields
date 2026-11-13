"""R13.1 patch: Beth SI cycle-average torque uses (1/2) Re{P x E*}."""
from __future__ import annotations

import re
import sys
from pathlib import Path

TEX = Path(__file__).resolve().parents[1] / "source" / "CHAPTER1_R13_0_WORKING_CANDIDATE.tex"


def main() -> int:
    text = TEX.read_text(encoding="utf-8", errors="replace")
    if "eq:ch1.beth-torque-cycle-average" not in text or "operatorname{Re}" not in text:
        print("FAIL: Beth peak-phasor torque average missing")
        return 1
    if "\\tfrac12" not in text and "\\frac12" not in text:
        print("FAIL: half-factor in Beth cycle-average missing")
        return 1
    print("OK: Beth SI phasor torque")
    return 0


if __name__ == "__main__":
    sys.exit(main())
