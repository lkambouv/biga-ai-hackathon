# Setup script for Windows
# Installs tools and VS Code extensions needed for the hackathon
# Run in PowerShell: Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass; .\scripts\setup-windows.ps1

Write-Host "=== Hackathon Setup (Windows) ===" -ForegroundColor Cyan
Write-Host ""

# --- Git ---
if (Get-Command git -ErrorAction SilentlyContinue) {
    Write-Host "[OK] Git already installed ($(git --version))" -ForegroundColor Green
} else {
    Write-Host "Installing Git..." -ForegroundColor Yellow
    winget install --id Git.Git -e --accept-package-agreements --accept-source-agreements
    # Refresh PATH
    $env:Path = [System.Environment]::GetEnvironmentVariable("Path","Machine") + ";" + [System.Environment]::GetEnvironmentVariable("Path","User")
}

# --- Python 3 ---
if (Get-Command python -ErrorAction SilentlyContinue) {
    Write-Host "[OK] Python already installed ($(python --version))" -ForegroundColor Green
} else {
    Write-Host "Installing Python 3..." -ForegroundColor Yellow
    winget install --id Python.Python.3.12 -e --accept-package-agreements --accept-source-agreements
    $env:Path = [System.Environment]::GetEnvironmentVariable("Path","Machine") + ";" + [System.Environment]::GetEnvironmentVariable("Path","User")
}

# --- Node.js ---
if (Get-Command node -ErrorAction SilentlyContinue) {
    Write-Host "[OK] Node.js already installed ($(node --version))" -ForegroundColor Green
} else {
    Write-Host "Installing Node.js..." -ForegroundColor Yellow
    winget install --id OpenJS.NodeJS.LTS -e --accept-package-agreements --accept-source-agreements
    $env:Path = [System.Environment]::GetEnvironmentVariable("Path","Machine") + ";" + [System.Environment]::GetEnvironmentVariable("Path","User")
}

# --- VS Code Extensions ---
if (Get-Command code -ErrorAction SilentlyContinue) {
    Write-Host "[OK] VS Code CLI available" -ForegroundColor Green
    Write-Host ""
    Write-Host "Installing VS Code extensions..." -ForegroundColor Yellow

    $extensions = @(
        "github.copilot",
        "github.copilot-chat",
        "ritwickdey.liveserver",
        "ms-python.python"
    )

    $installed = code --list-extensions

    foreach ($ext in $extensions) {
        if ($installed -match $ext) {
            Write-Host "  [OK] $ext already installed" -ForegroundColor Green
        } else {
            Write-Host "  Installing $ext..." -ForegroundColor Yellow
            code --install-extension $ext --force
        }
    }
} else {
    Write-Host ""
    Write-Host "[!] VS Code 'code' command not found." -ForegroundColor Red
    Write-Host "    Open VS Code -> Ctrl+Shift+P -> 'Shell Command: Install code command in PATH'" -ForegroundColor Yellow
    Write-Host "    Then re-run this script to install extensions." -ForegroundColor Yellow
}

Write-Host ""
Write-Host "=== Setup Complete ===" -ForegroundColor Cyan
Write-Host ""
Write-Host "Next steps:"
Write-Host "  1. Open VS Code"
Write-Host "  2. Sign in with your GitHub account (for Copilot)"
Write-Host "  3. Copy a starter template:  Copy-Item -Recurse starters\browser-app my-project"
Write-Host "  4. Open your project folder in VS Code and start building!"
Write-Host ""
