# Icon Setup Guide

You can use **different images** for the small header icon and the large sidebar icon.

## Icon Locations

### 1. Small Header Icon (next to your name)
- **Config**: `_config.yml` line 85: `header_icon: "your-small-icon.jpg"`
- **File location**: `images/your-small-icon.jpg`
- **Display size**: 32x32px (circular)
- **Best format**: Square image, 100x100px or larger

### 2. Large Sidebar Icon (author profile)
- **Config**: `_config.yml` line 84: `avatar: "your-large-icon.jpg"`
- **File location**: `images/your-large-icon.jpg`
- **Display size**: Larger (varies, but typically 200x200px or more)
- **Best format**: Square image, 400x400px or larger

## How to Set Up

1. **Add your small icon** to the `images/` folder
   - Example: `images/header-icon.png`

2. **Add your large icon** to the `images/` folder
   - Example: `images/profile-icon.jpg`

3. **Update `_config.yml`**:
   ```yaml
   author:
     name             : "Zikang Leng"
     avatar           : "profile-icon.jpg"      # Large sidebar icon
     header_icon      : "header-icon.png"      # Small header icon
     bio              : "..."
   ```

4. **Save and refresh** your browser

## Current Settings

- **Header icon**: `{{ site.author.header_icon }}` (falls back to `avatar` if not set)
- **Sidebar icon**: `{{ site.author.avatar }}`

## Tips

- Use a simpler/cleaner version for the small header icon (it's tiny)
- Use a higher quality version for the sidebar icon (it's larger)
- Both will be displayed as circles, so square images work best
- Supported formats: JPG, PNG, SVG, GIF

