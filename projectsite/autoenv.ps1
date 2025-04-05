# Check for virtual environment and activate
$envPath = ".\psusenv\Scripts\activate.ps1"
if (Test-Path $envPath) {
    Write-Host "Activating psusenv..." -ForegroundColor Green
    & $envPath
}
else {
    Write-Host "Run: python -m venv psusenv" -ForegroundColor Yellow
}