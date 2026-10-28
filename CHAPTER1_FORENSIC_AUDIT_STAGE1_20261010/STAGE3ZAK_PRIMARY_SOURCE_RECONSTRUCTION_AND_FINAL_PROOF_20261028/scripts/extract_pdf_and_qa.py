import pathlib
import pypdf

ak = pathlib.Path(__file__).resolve().parent.parent
pdf = ak / "STAGE3ZAK_CHAPTER1_INDEPENDENT_REVIEW.pdf"
p = pypdf.PdfReader(str(pdf))
print("pages", len(p.pages), "mediabox", float(p.pages[0].mediabox.width), float(p.pages[0].mediabox.height))
(ak / "STAGE3ZAK_CHAPTER1_CANDIDATE.txt").write_text(
    "\n\n".join((pg.extract_text() or "") for pg in p.pages), encoding="utf-8", errors="replace"
)
try:
    import fitz

    doc = fitz.open(str(pdf))
    out = ak / "qa_renders"
    out.mkdir(exist_ok=True)
    for i in range(39, 47):
        doc[i].get_pixmap(dpi=120).save(str(out / f"page_{i+1:03d}.png"))
    print("qa_renders", 39, 46)
except Exception as e:
    print("qa_skip", e)
