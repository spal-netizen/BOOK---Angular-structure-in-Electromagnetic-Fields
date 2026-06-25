# Volume I — complete classical monograph build (front matter + Ch. 1-4 + back matter)
param(
    [string]$LatexDir = (Join-Path $PSScriptRoot "..\latex"),
    [string]$ReviewDir = (Join-Path $PSScriptRoot "..\review"),
    [switch]$NoOpen
)

Set-StrictMode -Version Latest
$ErrorActionPreference = "Stop"

$root = Resolve-Path (Join-Path $PSScriptRoot "..")
$bibBodyScript = Join-Path $PSScriptRoot "Vol-I-PhaseH-Generate-BibBody.ps1"
if (Test-Path $bibBodyScript) {
    & $bibBodyScript -Root $root
}

$buildScript = Join-Path $PSScriptRoot "Build-VolumeI-ChapterBib.ps1"
& $buildScript -LatexDir $LatexDir

$resolvedLatex = Resolve-Path $LatexDir
$built = Join-Path $resolvedLatex "main.pdf"
if (-not (Test-Path $built)) {
    throw "Expected output not found: $built"
}

$reviewRoot = Resolve-Path $ReviewDir
$stamp = Get-Date -Format "yyyy-MM-dd"
$destName = "Volume-I-FINAL-PreFreeze-$stamp.pdf"
$dest = Join-Path $reviewRoot $destName
Copy-Item -Path $built -Destination $dest -Force

$pageCount = $null
$logPath = Join-Path $resolvedLatex "main.log"
if (Test-Path $logPath) {
    $m = Select-String -Path $logPath -Pattern "Output written on main\.pdf \((\d+) page" | Select-Object -Last 1
    if ($m) { $pageCount = [int]$m.Matches[0].Groups[1].Value }
}

Write-Host ""
Write-Host "Volume I complete PDF: $dest"
if ($pageCount) {
    Write-Host "Pages: $pageCount"
    $destWithPages = Join-Path $reviewRoot "Volume-I-FINAL-PreFreeze-${pageCount}pp-$stamp.pdf"
    Copy-Item -Path $dest -Destination $destWithPages -Force
    Write-Host "Archive copy: $destWithPages"
    $dest = $destWithPages
}

if (-not $NoOpen) {
    Start-Process -FilePath $dest
}

exit 0
