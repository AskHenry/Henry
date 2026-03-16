



Write-Host "Hello! This script is running directly from the web." -ForegroundColor Cyan
# Add your automation commands here
Get-Process | Sort-Object CPU -Descending | Select-Object -First 10
