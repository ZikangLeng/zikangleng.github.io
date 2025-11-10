@echo off
REM Batch script to test Jekyll build locally
REM Run this after installing Ruby and Bundler

echo Testing Jekyll build...

REM Check if bundle is available
where bundle >nul 2>&1
if %ERRORLEVEL% NEQ 0 (
    echo ERROR: Bundler not found. Please install Ruby first.
    echo Download Ruby from: https://rubyinstaller.org/
    exit /b 1
)

REM Check if Gemfile exists
if not exist "Gemfile" (
    echo ERROR: Gemfile not found. Make sure you're in the project root.
    exit /b 1
)

REM Install dependencies
echo.
echo Installing dependencies...
bundle install
if %ERRORLEVEL% NEQ 0 (
    echo ERROR: Failed to install dependencies
    exit /b 1
)

REM Build the site
echo.
echo Building Jekyll site...
bundle exec jekyll build
if %ERRORLEVEL% NEQ 0 (
    echo.
    echo ERROR: Build failed! Check the errors above.
    exit /b 1
)

echo.
echo SUCCESS: Site built successfully!
echo You can now test locally with: bundle exec jekyll serve
pause

