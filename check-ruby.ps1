# PowerShell script to check Ruby installation and help diagnose issues

Write-Host "=== Ruby Installation Check ===" -ForegroundColor Cyan
Write-Host ""

# Check Ruby
Write-Host "Checking Ruby..." -ForegroundColor Yellow
$rubyPath = Get-Command ruby -ErrorAction SilentlyContinue
if ($rubyPath) {
    Write-Host "✓ Ruby found at: $($rubyPath.Source)" -ForegroundColor Green
    $rubyVersion = ruby --version 2>&1
    Write-Host "  Version: $rubyVersion" -ForegroundColor Green
} else {
    Write-Host "✗ Ruby NOT found in PATH" -ForegroundColor Red
    Write-Host ""
    Write-Host "Possible solutions:" -ForegroundColor Yellow
    Write-Host "1. Restart your PowerShell/terminal" -ForegroundColor White
    Write-Host "2. Use 'Start Command Prompt with Ruby' from Start Menu" -ForegroundColor White
    Write-Host "3. Check if Ruby is installed: Get-Command ruby -ErrorAction SilentlyContinue" -ForegroundColor White
    Write-Host ""
    exit 1
}

Write-Host ""

# Check Gem
Write-Host "Checking Gem..." -ForegroundColor Yellow
$gemPath = Get-Command gem -ErrorAction SilentlyContinue
if ($gemPath) {
    Write-Host "✓ Gem found at: $($gemPath.Source)" -ForegroundColor Green
    $gemVersion = gem --version 2>&1
    Write-Host "  Version: $gemVersion" -ForegroundColor Green
} else {
    Write-Host "✗ Gem NOT found" -ForegroundColor Red
    Write-Host "  Ruby is installed but gem is not accessible" -ForegroundColor Yellow
    exit 1
}

Write-Host ""

# Check Bundler
Write-Host "Checking Bundler..." -ForegroundColor Yellow
$bundlePath = Get-Command bundle -ErrorAction SilentlyContinue
if ($bundlePath) {
    Write-Host "✓ Bundler found at: $($bundlePath.Source)" -ForegroundColor Green
    $bundleVersion = bundle --version 2>&1
    Write-Host "  Version: $bundleVersion" -ForegroundColor Green
} else {
    Write-Host "⚠ Bundler not found - installing..." -ForegroundColor Yellow
    gem install bundler
    if ($LASTEXITCODE -eq 0) {
        Write-Host "✓ Bundler installed successfully" -ForegroundColor Green
    } else {
        Write-Host "✗ Failed to install Bundler" -ForegroundColor Red
        exit 1
    }
}

Write-Host ""
Write-Host "=== Checking Project Setup ===" -ForegroundColor Cyan
Write-Host ""

# Check if in project directory
if (-not (Test-Path "Gemfile")) {
    Write-Host "✗ Gemfile not found" -ForegroundColor Red
    Write-Host "  Make sure you're in the project root directory" -ForegroundColor Yellow
    Write-Host "  Current directory: $(Get-Location)" -ForegroundColor White
    exit 1
}

Write-Host "✓ Gemfile found" -ForegroundColor Green

Write-Host ""
Write-Host "=== Next Steps ===" -ForegroundColor Cyan
Write-Host ""
Write-Host "1. Install dependencies:" -ForegroundColor Yellow
Write-Host "   bundle install" -ForegroundColor White
Write-Host ""
Write-Host "2. Build the site:" -ForegroundColor Yellow
Write-Host "   bundle exec jekyll build" -ForegroundColor White
Write-Host ""
Write-Host "3. Serve locally:" -ForegroundColor Yellow
Write-Host "   bundle exec jekyll serve" -ForegroundColor White
Write-Host ""

