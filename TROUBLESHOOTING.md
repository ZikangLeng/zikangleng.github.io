# Troubleshooting Local Build Issues

## Problem: Ruby commands not found

If you get errors like "ruby: command not found" or "bundle: command not found", Ruby isn't in your PATH.

### Solution 1: Restart Terminal (Easiest)
1. **Close your current PowerShell/terminal completely**
2. **Open a new PowerShell window**
3. Try again: `ruby --version`

### Solution 2: Use Ruby Installer's Command Prompt
1. Open **Start Menu**
2. Search for **"Start Command Prompt with Ruby"** or **"Ruby Command Prompt"**
3. Navigate to your project: `cd D:\CBAResearch\zikangleng.github.io`
4. Run: `bundle install`

### Solution 3: Add Ruby to PATH Manually
1. Find where Ruby is installed (usually `C:\Ruby31-x64` or `C:\Ruby32-x64`)
2. Open **System Properties** → **Environment Variables**
3. Edit **Path** variable
4. Add: `C:\Ruby31-x64\bin` (or your Ruby path)
5. Restart terminal

### Solution 4: Reinstall Ruby with PATH option
1. Download Ruby+Devkit from https://rubyinstaller.org/
2. During installation, **check "Add Ruby executables to your PATH"**
3. Restart your computer (or at least all terminal windows)

## Step-by-Step Build Process

Once Ruby is working:

```powershell
# 1. Navigate to project
cd D:\CBAResearch\zikangleng.github.io

# 2. Install Bundler (if not installed)
gem install bundler

# 3. Install dependencies
bundle install

# If bundle install fails, try:
bundle clean
bundle install

# 4. Build the site
bundle exec jekyll build

# 5. Serve locally (optional)
bundle exec jekyll serve
```

## Common Errors and Fixes

### Error: "Could not locate Gemfile"
- **Fix**: Make sure you're in the project root directory (`zikangleng.github.io`)

### Error: "SSL certificate verify failed"
- **Fix**: Run: `gem sources -r https://rubygems.org/` then `gem sources -a https://rubygems.org/`

### Error: "Failed to build gem native extension"
- **Fix**: Make sure you installed Ruby+Devkit (not just Ruby)

### Error: "jekyll: command not found"
- **Fix**: Always use `bundle exec jekyll` instead of just `jekyll`

### Error: "Permission denied" or "Access denied"
- **Fix**: Run PowerShell as Administrator, or install gems to user directory:
  ```powershell
  bundle config set --local path 'vendor/bundle'
  bundle install
  ```

## Verify Installation

Run these commands to verify everything is set up:

```powershell
ruby --version    # Should show Ruby version (e.g., 3.1.0)
gem --version     # Should show gem version
bundle --version  # Should show bundler version
```

## Alternative: Use GitHub Actions to Test

If local build is too difficult, you can:
1. Push your changes to GitHub
2. Check the Actions tab for build status
3. View any errors in the build logs

This is slower but doesn't require local setup.

