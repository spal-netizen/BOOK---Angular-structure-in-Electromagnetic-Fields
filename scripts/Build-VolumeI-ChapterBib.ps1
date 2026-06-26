param(
    [string]$LatexDir = (Join-Path $PSScriptRoot "..\latex"),
    [switch]$WhatIf
)

Set-StrictMode -Version Latest
$ErrorActionPreference = "Stop"

function Invoke-Step {
    param(
        [Parameter(Mandatory = $true)]
        [string]$FilePath,
        [Parameter(Mandatory = $true)]
        [string[]]$ArgumentList,
        [switch]$RequirePdfComplete
    )

    $display = "$FilePath $($ArgumentList -join ' ')"
    Write-Host ">> $display"

    if ($WhatIf) {
        return
    }

    $stepLog = Join-Path $resolvedLatexDir ("build-" + ($FilePath -replace '[^a-zA-Z0-9]', '-') + ".log")
    & $FilePath @ArgumentList *> $stepLog
    $exitCode = $LASTEXITCODE
    if ($exitCode -ne 0) {
        $pdfPath = Join-Path $resolvedLatexDir "main.pdf"
        $mainLog = Join-Path $resolvedLatexDir "main.log"
        $pdfComplete = $false
        if ((Test-Path $mainLog) -and (Select-String -Path $mainLog -Pattern "Output written on main\.pdf" -Quiet)) {
            $pdfComplete = $true
        }
        if ($FilePath -eq "pdflatex" -and (Test-Path $pdfPath) -and $pdfComplete -and -not $RequirePdfComplete) {
            Write-Warning "pdflatex exit code $exitCode (LaTeX warnings present); continuing because main.pdf completed."
            return
        }
        $tail = Get-Content -Path $stepLog -Tail 12 -ErrorAction SilentlyContinue
        if ($tail) {
            Write-Host ($tail -join [Environment]::NewLine)
        }
        throw "Command failed with exit code ${exitCode}: $display (see $stepLog)"
    }
}

function Repair-DuplicateBibdata {
    param([string]$AuxPath)
    if (-not (Test-Path $AuxPath)) { return }
    $lines = [System.IO.File]::ReadAllLines($AuxPath)
    $styleIdx = @()
    $dataIdx = @()
    for ($i = 0; $i -lt $lines.Length; $i++) {
        if ($lines[$i] -match '^\\bibstyle\{') { $styleIdx += $i }
        if ($lines[$i] -match '^\\bibdata\{') { $dataIdx += $i }
    }
    $drop = @()
    if ($styleIdx.Count -gt 1) { $drop += $styleIdx[0..($styleIdx.Count - 2)] }
    if ($dataIdx.Count -gt 1) { $drop += $dataIdx[0..($dataIdx.Count - 2)] }
    if ($drop.Count -eq 0) { return }
    foreach ($i in ($drop | Sort-Object -Descending)) {
        $lines = $lines[0..($i - 1)] + $lines[($i + 1)..($lines.Length - 1)]
    }
    [System.IO.File]::WriteAllLines($AuxPath, $lines)
    Write-Host ">> Repaired duplicate bib entries in $(Split-Path $AuxPath -Leaf)"
}

function Test-CompleteAux {
    param([string]$AuxPath)
    if (-not (Test-Path $AuxPath)) { return $false }
    return (Select-String -Path $AuxPath -Pattern '^\\bibstyle\{' -Quiet) -and
           (Select-String -Path $AuxPath -Pattern '^\\bibdata\{' -Quiet)
}

$resolvedLatexDir = Resolve-Path -Path $LatexDir
Push-Location $resolvedLatexDir
try {
    if (-not $WhatIf) {
        foreach ($tool in @("pdflatex", "bibtex")) {
            if (-not (Get-Command $tool -ErrorAction SilentlyContinue)) {
                throw "Required tool '$tool' was not found in PATH."
            }
        }
        # Truncated hyperref bookmark files from interrupted builds break \begin{document}.
        Get-ChildItem -Path $resolvedLatexDir -Filter "*.out" -File -ErrorAction SilentlyContinue |
            Remove-Item -Force -ErrorAction SilentlyContinue
    }

    Invoke-Step -FilePath "pdflatex" -ArgumentList @("-interaction=nonstopmode", "main.tex") -RequirePdfComplete

    foreach ($chapter in @("ch01", "ch02", "ch03", "ch04")) {
        $auxPath = Join-Path $resolvedLatexDir "$chapter.aux"
        $hasCitations = (Test-Path $auxPath) -and (Select-String -Path $auxPath -Pattern "\\citation" -Quiet)

        if ($hasCitations -and (Test-CompleteAux -AuxPath $auxPath)) {
            Repair-DuplicateBibdata -AuxPath $auxPath
            Invoke-Step -FilePath "bibtex" -ArgumentList @($chapter)
        }
        elseif ($hasCitations) {
            throw "Incomplete $chapter.aux (no bibstyle/bibdata): pdflatex did not finish $chapter. Delete stale .aux/.out and rebuild."
        }
        else {
            Write-Host ">> Skipping bibtex $chapter (no citations in $chapter.aux)"
        }
    }

    Invoke-Step -FilePath "pdflatex" -ArgumentList @("-interaction=nonstopmode", "main.tex")
    Invoke-Step -FilePath "pdflatex" -ArgumentList @("-interaction=nonstopmode", "main.tex")

    Write-Host ""
    Write-Host "Build complete: $(Join-Path $resolvedLatexDir 'main.pdf')"
}
finally {
    Pop-Location
}
