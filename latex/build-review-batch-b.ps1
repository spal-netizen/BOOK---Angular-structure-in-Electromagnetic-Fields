# Batch B — Volume I integration review build
$ErrorActionPreference = "Stop"
$base = "main-vol1-stage10"
$root = Split-Path -Parent $MyInvocation.MyCommand.Path
Set-Location $root
$outDir = Join-Path (Split-Path -Parent $root) "VOLUME_I_RELEASE\BATCH_B_REVIEW_20261114"
New-Item -ItemType Directory -Force -Path $outDir | Out-Null
$logFile = Join-Path $outDir "BUILD_LOG.txt"
latexmk -pdf -interaction=nonstopmode -file-line-error "$base.tex" 2>&1 | Tee-Object -FilePath $logFile
if ($LASTEXITCODE -ne 0) {
    Write-Host "BUILD FAILED — see $logFile"
    exit $LASTEXITCODE
}
$pdf = Join-Path $root "$base.pdf"
if (Test-Path $pdf) {
    Copy-Item -Force $pdf (Join-Path $outDir "VOLUME_I_REVIEW.pdf")
    Copy-Item -Force (Join-Path $root "$base.log") (Join-Path $outDir "VOLUME_I_BUILD_DETAIL.log")
}
# Snapshot key sources (paths relative to repo root)
$sources = @(
    "latex/ch02-classical/restored/restore-orig-002-2-0-1-radiation-as-a-source-to-field-operator.tex",
    "latex/ch02-classical/restored/restore-orig-015-2-3-1-scalar-vector-and-dyadic-green-functions.tex",
    "latex/ch02-classical/restored/restore-orig-021-2-4-1-sommerfeld-radiation-condition.tex",
    "latex/ch02-classical/restored/restore-orig-022-2-4-2-outgoing-wave-selection.tex",
    "latex/ch02-classical/restored/restore-orig-023-2-4-3-uniqueness-of-radiative-solutions.tex",
    "latex/ch03.tex",
    "latex/ch04.tex"
)
$srcDir = Join-Path $outDir "sources"
New-Item -ItemType Directory -Force -Path $srcDir | Out-Null
$repo = Split-Path -Parent $root
foreach ($rel in $sources) {
    $p = Join-Path $repo $rel
    if (Test-Path $p) {
        $dest = Join-Path $srcDir (Split-Path -Leaf $p)
        Copy-Item -Force $p $dest
    }
}
Write-Host "Review package: $outDir"