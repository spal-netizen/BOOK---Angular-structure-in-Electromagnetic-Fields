$root = Split-Path -Parent $PSScriptRoot
$ch02 = Join-Path $root "latex\ch02.tex"
$fresh = Join-Path $root "latex\_sec202_fresh.tex"
$text = [System.IO.File]::ReadAllText($ch02)
$freshBody = [System.IO.File]::ReadAllText($fresh)
$marker = "\label{sec:ch202}"
$idx1 = $text.IndexOf($marker)
if ($idx1 -lt 0) { throw "sec:ch202 not found" }
$idxTag = $text.IndexOf("% TOC tag: [HOME]", $idx1)
$startBody = $text.IndexOf("`r`n`r`n", $idxTag)
if ($startBody -lt 0) { $startBody = $text.IndexOf("`n`n", $idxTag) }
if ($startBody -lt 0) { throw "body start not found" }
$startBody += 2
$endMarker = "\subsection{Continuity with Chapter 1}"
$endBody = $text.IndexOf($endMarker, $startBody)
if ($endBody -lt 0) { throw "Continuity subsection not found" }
$newText = $text.Substring(0, $startBody) + $freshBody + $text.Substring($endBody)
[System.IO.File]::WriteAllText($ch02, $newText)
Write-Host "sec202 replaced OK ($($startBody)..$($endBody))"
