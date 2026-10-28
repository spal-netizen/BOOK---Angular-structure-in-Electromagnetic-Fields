import pathlib
import pypdf

brown = pathlib.Path(__file__).resolve().parents[2] / "STAGE3ZE_SOURCE_VERIFIED_CHAPTER1_RECONSTRUCTION_20261023" / "brown_sources" / "Electrodynamics.a4.pdf"
p = pypdf.PdfReader(str(brown))
hits = []
for i, page in enumerate(p.pages):
    tx = page.extract_text() or ""
    if "15.51" in tx or "15.52" in tx or "15.53" in tx:
        hits.append((i + 1, tx[:500]))
for pg, snip in hits[:6]:
    print("PDF_page", pg, snip.replace("\n", " ")[:300])
