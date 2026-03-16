



# --- 1. DEFINE YOUR FUNCTIONS (The Tools) ---

function Install-Chrome {
    Write-Host "Installing Google Chrome..." -ForegroundColor Cyan
    winget install --id Google.Chrome --silent --accept-package-agreements
}

function Set-HighPerformance {
    Write-Host "Optimizing Power Plan..." -ForegroundColor Yellow
    powercfg -duplicatescheme e9a42b02-d5df-448d-aa00-03f14749eb61
}

# --- 2. THE MENU ENGINE (The Interface) ---

do {
    Clear-Host
    Write-Host "==============================" -ForegroundColor Green
    Write-Host "   MY CUSTOM WINDOWS UTILITY  " -ForegroundColor Green
    Write-Host "==============================" -ForegroundColor Green
    Write-Host "1. Install Google Chrome"
    Write-Host "2. Enable Ultimate Performance"
    Write-Host "Q. Quit"
    Write-Host ""

    $choice = Read-Host "Select an option"

    switch ($choice) {
        '1' { Install-Chrome }
        '2' { Set-HighPerformance }
        'q' { exit }
        default { Write-Host "Invalid choice, try again." -ForegroundColor Red; Start-Sleep -Seconds 1 }
    }

    if ($choice -ne 'q') {
        Write-Host "`nTask complete. Press any key to return to menu..."
        $null = $Host.UI.RawUI.ReadKey("NoEcho,IncludeKeyDown")
    }

} until ($choice -eq 'q')

