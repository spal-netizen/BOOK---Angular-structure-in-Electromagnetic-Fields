param(
    [Parameter(Mandatory = $true)]
    [ValidateSet("start", "end")]
    [string]$Mode,

    [string]$Message = "",

    [string]$UserName = "Srikanta Pal",

    [string]$UserEmail = "spal@bitmesra.ac.in"
)

Set-StrictMode -Version Latest
$ErrorActionPreference = "Stop"

function Invoke-Git {
    param(
        [Parameter(Mandatory = $true)]
        [string[]]$Args
    )

    $display = "git $($Args -join ' ')"
    Write-Host ">> $display"
    & git @Args
    if ($LASTEXITCODE -ne 0) {
        throw "Command failed with exit code ${LASTEXITCODE}: $display"
    }
}

if ($Mode -eq "start") {
    Invoke-Git -Args @("checkout", "main")
    Invoke-Git -Args @("pull", "--rebase", "origin", "main")
    Invoke-Git -Args @("status", "-sb")
    exit 0
}

$statusPorcelain = (& git status --porcelain)
if ($LASTEXITCODE -ne 0) {
    throw "Failed to inspect git status."
}

if (-not $statusPorcelain) {
    Write-Host "No local changes to commit. Nothing to push."
    Invoke-Git -Args @("status", "-sb")
    exit 0
}

if ([string]::IsNullOrWhiteSpace($Message)) {
    $Message = "session: sync end $(Get-Date -Format 'yyyy-MM-dd HH:mm')"
}

Invoke-Git -Args @("add", ".")
Invoke-Git -Args @("-c", "user.name=$UserName", "-c", "user.email=$UserEmail", "commit", "-m", $Message)
Invoke-Git -Args @("push", "origin", "main")
Invoke-Git -Args @("status", "-sb")
