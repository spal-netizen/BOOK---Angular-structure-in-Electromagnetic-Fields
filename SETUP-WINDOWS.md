# One-time Windows setup (required before Month 1 ends)

Your machine did not detect **Git** or **Python** in PATH. Install in this order:

## 1. Git for Windows
https://git-scm.com/download/win  
Then in project folder:
```powershell
cd "c:\Users\S.Pal\Downloads\BOOK - Angular structure in Electromagnetic Fields"
git init
git add .
git commit -m "Volume I project scaffold"
```

## 2. TeX Live (recommended) or MiKTeX
https://tug.org/texlive/  
Add `latexmk` to PATH. Build:
```powershell
cd latex
latexmk -pdf main.tex
```

For chapter-wise bibliography numbering with chapterbib (`[m.n]` style), use:
```powershell
powershell -ExecutionPolicy Bypass -File ".\scripts\Build-VolumeI-ChapterBib.ps1"
```

Dry-run command preview:
```powershell
powershell -ExecutionPolicy Bypass -File ".\scripts\Build-VolumeI-ChapterBib.ps1" -WhatIf
```

## 3. Python 3
https://www.python.org/downloads/ — check **Add python.exe to PATH**  
Then:
```powershell
python scripts/generate_chapter_stubs.py
```

## 4. Zotero (optional, Month 2+)
For `latex/references.bib` management.

## 5. Cursor extensions
- LaTeX Workshop
- (Optional) LaTeX Utilities

## Verify
```powershell
git --version
python --version
latexmk -version
```
