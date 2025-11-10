# PowerShell script to test Jekyll build locally
# Run this after installing Ruby and Bundler

Write-Host "Testing Jekyll build..." -ForegroundColor Cyan

# Check if bundle is available
if (-not (Get-Command bundle -ErrorAction SilentlyContinue)) {
    Write-Host "ERROR: Bundler not found. Please install Ruby first." -ForegroundColor Red
    Write-Host "Download Ruby from: https://rubyinstaller.org/" -ForegroundColor Yellow
    exit 1
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

