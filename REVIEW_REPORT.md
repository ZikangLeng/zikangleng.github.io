# Repository Review Report
**Date**: 2025-01-XX  
**Reviewer**: AI Assistant  
**Scope**: Complete codebase analysis for errors, improvements, and best practices

---

## 🔴 CRITICAL ISSUES (Must Fix)

### 1. **Duplicate DOI Link - Publications Page**
**Location**: `_pages/publications.md` lines 47 and 65

**Issue**: Two different publications share the same DOI link:
- Line 47: "Characterising Topic Familiarity and Query Specificity Using Eye-Tracking Data" (SIGIR 2025)
- Line 65: "IMUGPT 2.0: Language-Based Cross Modality Transfer for Sensor-Based Human Activity Recognition" (IMWUT 2024)

Both use: `https://dl.acm.org/doi/10.1145/3678545`

**Impact**: Users clicking on IMUGPT 2.0 will be taken to the wrong paper.

**Fix Required**: Find and update the correct DOI for IMUGPT 2.0. The news page (line 17) also uses this incorrect DOI.

---

### 2. **Unused CSS Code**
**Location**: `_sass/_custom.scss` lines 65-86

**Issue**: `.publication-image` styles are still present but images were removed from publications.

**Impact**: Unnecessary CSS bloat (~25 lines of unused code).

**Fix Required**: Remove unused `.publication-image` styles.

---

## ⚠️ HIGH PRIORITY ISSUES

### 3. **Grammar Inconsistencies**
**Location**: Multiple files (`_pages/news.md`, `_pages/about.md`)

**Issue**: Using "have been" for singular papers. Should be "has been" for singular subjects.

**Examples**:
- Line 7 (news.md): "have been accepted" → should be "has been accepted"
- Line 9 (news.md): "have been accepted" → should be "has been accepted"

**Impact**: Grammatical errors reduce professionalism.

---

### 4. **Date Verification Needed**
**Location**: `_pages/news.md` lines 7, 9, 11

**Issue**: Future dates in news items:
- Dec 2025
- Nov 2025  
- Jul 2025

**Impact**: If these are incorrect, it misrepresents publication timeline.

**Action Required**: Verify these dates are correct or update them.

---

### 5. **About Page Year Status**
**Location**: `_pages/about.md` line 11

**Issue**: States "second-year Ph.D. student" but started Aug 2024.

**Impact**: If current date is before Aug 2025, this is incorrect.

**Action Required**: Update based on current date.

---

## 📝 MEDIUM PRIORITY IMPROVEMENTS

### 6. **Missing External Link Indicators**
**Location**: All publication links

**Issue**: External links don't have visual indicators (e.g., external link icon, `target="_blank"`, `rel="noopener"`).

**Impact**: Users don't know links open in new tab, potential security issue.

**Recommendation**: Add `target="_blank" rel="noopener noreferrer"` to external links.

---

### 7. **Missing Meta Descriptions**
**Location**: All page front matter

**Issue**: No `description` field in page front matter for SEO.

**Impact**: Poor SEO, missing social media previews.

**Recommendation**: Add descriptions to all pages.

---

### 8. **Unused Images**
**Location**: `images/` directory

**Issue**: Many images appear unused:
- `3953273590_704e3899d5_m.jpg`
- `500x300.png`
- `bio-photo-2.jpg`
- `bio-photo.jpg`
- `editing-talk.png`
- `emotion.png`
- `fingerspeller.png`
- `foo-bar-identity-th.jpg`
- `foo-bar-identity.jpg`
- `genai.png`
- `image-alignment-*.jpg` (multiple)
- `imugpt.png`
- `imugpt2.png`
- `msi.png`
- `paragraph-*.png` (multiple)
- `profile.png`
- `wheelchair_video.png`
- `wheelchair.png`

**Impact**: Repository bloat, slower Git operations.

**Recommendation**: Audit and remove unused images.

---

### 9. **Missing Alt Text for Icons**
**Location**: `_includes/masthead.html` line 12

**Issue**: Icon has alt text but could be more descriptive.

**Current**: `alt="{{ site.title }}"`
**Better**: `alt="Zikang Leng profile icon"`

---

### 10. **Accessibility: Skip to Content Link**
**Location**: `_layouts/default.html`

**Issue**: No "skip to main content" link for keyboard navigation.

**Impact**: Poor accessibility for keyboard users.

**Recommendation**: Add skip link.

---

## 🔧 LOW PRIORITY IMPROVEMENTS

### 11. **Unused Files**
**Location**: Root directory

**Files to Review**:
- `talkmap.ipynb` (1 line, appears empty/unused)
- `ICON_SETUP.md` (might be useful, but could be consolidated)
- Example files in `markdown_generator/` (if not used)

---

### 12. **CSS Optimization**
**Location**: `_sass/_custom.scss`

**Issues**:
- Many `!important` flags (could indicate specificity issues)
- Some duplicate dark mode rules
- Could benefit from CSS variables for colors

---

### 13. **JavaScript Error Handling**
**Location**: `_includes/scripts.html`

**Issue**: Dark mode and back-to-top scripts have minimal error handling.

**Recommendation**: Add try-catch blocks and better null checks.

---

### 14. **SEO Enhancements**
**Location**: `_config.yml` and page front matter

**Missing**:
- `google_site_verification` (line 53, empty)
- `og_image` (line 65, empty)
- Page-specific meta descriptions

---

### 15. **Structured Data (JSON-LD)**
**Location**: Publications page

**Issue**: No structured data for publications (helps Google Scholar indexing).

**Recommendation**: Add JSON-LD schema for publications.

---

## ✅ POSITIVE FINDINGS

1. ✅ **Good Structure**: Well-organized Jekyll site structure
2. ✅ **Responsive Design**: CSS includes mobile breakpoints
3. ✅ **Dark Mode**: Comprehensive dark mode implementation
4. ✅ **Accessibility**: ARIA labels on interactive elements
5. ✅ **Documentation**: Good local testing documentation
6. ✅ **Year Grouping**: Publications well-organized by year
7. ✅ **Back to Top**: Good UX feature implemented

---

## 📊 SUMMARY

- **Critical Issues**: 2
- **High Priority**: 3
- **Medium Priority**: 5
- **Low Priority**: 5
- **Total Issues Found**: 15

---

## 🎯 RECOMMENDED ACTION PLAN

### Immediate (This Session):
1. Fix duplicate DOI link
2. Remove unused CSS
3. Fix grammar issues

### Short Term (Next Session):
4. Verify and fix dates
5. Add external link indicators
6. Add meta descriptions

### Long Term:
7. Clean up unused images
8. Improve accessibility
9. Add structured data
10. Optimize CSS

---

## 📝 NOTES

- The repository is generally well-maintained
- Most issues are minor improvements rather than critical bugs
- The duplicate DOI is the most urgent issue to fix
- Consider setting up automated linting/checking

