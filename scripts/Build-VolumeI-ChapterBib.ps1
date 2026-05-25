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
        [string[]]$ArgumentList
    )

    $display = "$FilePath $($ArgumentList -join ' ')"
    Write-Host ">> $display"

    if ($WhatIf) {
        return
    }

    & $FilePath @ArgumentList
    if ($LASTEXITCODE -ne 0) {
        throw "Command failed with exit code ${LASTEXITCODE}: $display"
    }
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
    }

    Invoke-Step -FilePath "pdflatex" -ArgumentList @("-interaction=nonstopmode", "-halt-on-error", "main.tex")

    foreach ($chapter in @("ch01", "ch02", "ch03", "ch04")) {
        Invoke-Step -FilePath "bibtex" -ArgumentList @($chapter)
    }

    Invoke-Step -FilePath "pdflatex" -ArgumentList @("-interaction=nonstopmode", "-halt-on-error", "main.tex")
    Invoke-Step -FilePath "pdflatex" -ArgumentList @("-interaction=nonstopmode", "-halt-on-error", "main.tex")

    Write-Host ""
    Write-Host "Build complete: $(Join-Path $resolvedLatexDir 'main.pdf')"
}
finally {
    Pop-Location
}
