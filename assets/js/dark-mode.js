// Dark mode toggle.
//
// This script only flips a class and remembers the choice. Every colour lives
// in the CSS custom properties defined in _sass/_custom.scss, which redefines
// them under `html.dark-mode`. Do not set colours here — inline styles would
// override the stylesheet and silently become a second source of truth.
//
// The class is applied before first paint by the inline snippet in
// _includes/head.html, so this file only handles user-initiated changes.
(function () {
  function applyTheme(isDark) {
    document.documentElement.classList.toggle('dark-mode', isDark);
    if (document.body) {
      document.body.classList.toggle('dark-mode', isDark);
    }
  }

  function initDarkMode() {
    var darkModeSwitch = document.getElementById('dark-mode-switch');

    if (!darkModeSwitch) {
      setTimeout(initDarkMode, 100);
      return;
    }

    var storedTheme;
    try {
      storedTheme = localStorage.getItem('theme');
    } catch (e) {
      storedTheme = null;
    }

    var isDark = (storedTheme || 'dark') === 'dark';

    applyTheme(isDark);
    darkModeSwitch.checked = isDark;

    darkModeSwitch.addEventListener('change', function (e) {
      var nowDark = e.target.checked;
      applyTheme(nowDark);
      try {
        localStorage.setItem('theme', nowDark ? 'dark' : 'light');
      } catch (err) {
        /* storage unavailable (private mode) — the class still applies */
      }
    });
  }

  if (document.readyState === 'loading') {
    document.addEventListener('DOMContentLoaded', initDarkMode);
  } else {
    initDarkMode();
  }
})();
