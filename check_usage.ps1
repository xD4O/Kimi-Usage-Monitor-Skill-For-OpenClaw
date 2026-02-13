# Kimi Usage Check - PowerShell version for Windows
# Usage: .\check_usage.ps1 [-Json]

param([switch]$Json)

$scriptDir = Split-Path -Parent $MyInvocation.MyCommand.Path
Set-Location $scriptDir

$arg = if ($Json) { "--json" } else { "" }
python3 scripts\fetch_usage.py $arg
