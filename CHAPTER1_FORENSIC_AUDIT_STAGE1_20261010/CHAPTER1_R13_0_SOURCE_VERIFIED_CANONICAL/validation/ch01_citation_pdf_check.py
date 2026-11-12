"""Fail if built PDF contains unresolved citation markers (R13.0 batch F)."""
from __future__ import annotations

import re
import sys
from pathlib import Path

from pypdf import PdfReader


def main() -> None:
    pdf = Path(__file__).resolve().parents[1] / "build_package" / "main-ch01-only.pdf"
    if not pdf.is_file():
        raise SystemExit(f"PDF missing: {pdf}")
    reader = PdfReader(str(pdf))
    patterns = ("[?]", "??", "[0]")  # [0] sometimes appears as failed cleveref
    bad: list[tuple[int, str, int]] = []
    for i, page in enumerate(reader.pages, start=1):
        text = page.extract_text() or ""
        for pat in patterns:
            if pat == "[0]" and "[0]" not in text:
                continue
            n = text.count(pat)
            if n:
                bad.append((i, pat, n))
    if bad:
        detail = "; ".join(f"p{pg}:{pat}x{c}" for pg, pat, c in bad[:20])
        raise AssertionError(f"Unresolved markers in PDF: {detail}")
    aux = pdf.parent / "main-ch01-only.aux"
    aux_text = aux.read_text(encoding="utf-8", errors="replace") if aux.is_file() else ""
    if "\\citation{" not in aux_text:
        raise AssertionError("main-ch01-only.aux has no \\citation records (chapterbib regression?)")
    print(f"OK: {len(reader.pages)} pages, no [?]/?? markers; aux has citations.")


if __name__ == "__main__":
    main()
