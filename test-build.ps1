# PowerShell script to test Jekyll build locally
# Run this after installing Ruby and Bundler

Write-Host "Testing Jekyll build..." -ForegroundColor Cyan
Write-Host ""

# Check if Ruby is available
if (-not (Get-Command ruby -ErrorAction SilentlyContinue)) {
    Write-Host "ERROR: Ruby not found in PATH." -ForegroundColor Red
    Write-Host ""
    Write-Host "Solutions:" -ForegroundColor Yellow
    Write-Host "1. Restart your PowerShell/terminal" -ForegroundColor White
    Write-Host "2. Use 'Start Command Prompt with Ruby' from Start Menu" -ForegroundColor White
    Write-Host "3. Run: .\check-ruby.ps1 to diagnose the issue" -ForegroundColor White
    Write-Host ""
    Write-Host "Download Ruby from: https://rubyinstaller.org/" -ForegroundColor Yellow
    exit 1
}

# Check if bundle is available
if (-not (Get-Command bundle -ErrorAction SilentlyContinue)) {
    Write-Host "WARNING: Bundler not found. Installing..." -ForegroundColor Yellow
    gem install bundler
    if ($LASTEXITCODE -ne 0) {
        Write-Host "ERROR: Failed to install Bundler" -ForegroundColor Red
        exit 1
    }
}

# Check if Gemfile exists
if (-not (Test-Path "Gemfile")) {
    Write-Host "ERROR: Gemfile not found. Make sure you're in the project root." -ForegroundColor Red
    exit 1
}

# Install dependencies
Write-Host "`nInstalling dependencies..." -ForegroundColor Cyan
bundle install
if ($LASTEXITCODE -ne 0) {
    Write-Host "ERROR: Failed to install dependencies" -ForegroundColor Red
    exit 1
}

# Build the site
Write-Host "`nBuilding Jekyll site..." -ForegroundColor Cyan
bundle exec jekyll build
if ($LASTEXITCODE -ne 0) {
    Write-Host "`nERROR: Build failed! Check the errors above." -ForegroundColor Red
    exit 1
}

Write-Host "`nSUCCESS: Site built successfully!" -ForegroundColor Green
Write-Host "You can now test locally with: bundle exec jekyll serve" -ForegroundColor Yellow

