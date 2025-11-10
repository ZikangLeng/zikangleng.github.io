# Local Testing Guide

Test your Jekyll site locally before pushing to GitHub to catch build errors early.

## Prerequisites (Windows)

1. **Install Ruby**: Download from [rubyinstaller.org](https://rubyinstaller.org/)
   - Choose Ruby+Devkit version (recommended)
   - During installation, check "Add Ruby executables to your PATH"

2. **Install Bundler** (after Ruby is installed):
   ```powershell
   gem install bundler
   ```

## Quick Start

1. **Install dependencies**:
   ```powershell
   bundle install
   ```
   If you get errors, try:
   ```powershell
   bundle clean
   bundle install
   ```

2. **Build and serve locally**:
   ```powershell
   bundle exec jekyll serve
   ```
   
   Or for live reload (auto-refresh on file changes):
   ```powershell
   bundle exec jekyll serve --livereload
   ```

3. **View your site**: Open http://localhost:4000 in your browser

4. **Stop the server**: Press `Ctrl+C` in the terminal

## Build Only (No Server)

To just check if the site builds without errors:

```powershell
bundle exec jekyll build
```

This creates a `_site` folder with the generated HTML. Check for any error messages.

## Troubleshooting

### "bundle: command not found"
- Make sure Ruby is installed and added to PATH
- Restart your terminal/PowerShell after installing Ruby

### "Could not locate Gemfile"
- Make sure you're in the project root directory (`zikangleng.github.io`)

### Build errors with SCSS
- Check that `_sass/_custom.scss` exists (not in `assets/css/`)
- Verify imports in `assets/css/main.scss`

### Port 4000 already in use
```powershell
bundle exec jekyll serve --port 4001
```

## What to Check

- ✅ Site builds without errors
- ✅ All pages load correctly
- ✅ Publications page shows cards properly
- ✅ Navigation links work
- ✅ Images display correctly
- ✅ No console errors in browser

## Production Build Test

To test with production settings (like GitHub Pages):

```powershell
JEKYLL_ENV=production bundle exec jekyll build
```

Note: On Windows PowerShell, use:
```powershell
$env:JEKYLL_ENV="production"; bundle exec jekyll build
```

