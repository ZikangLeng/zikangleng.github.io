// Dark Mode Toggle Script
(function() {
  function initDarkMode() {
    const darkModeSwitch = document.getElementById('dark-mode-switch');
    const html = document.documentElement;
    const body = document.body;
    
    if (!darkModeSwitch) {
      // Retry if element not found yet
      setTimeout(initDarkMode, 100);
      return;
    }
    
    // Check for saved theme preference or default to dark mode
    const currentTheme = localStorage.getItem('theme') || 'dark';
    
    // Set initial state
    function applyDarkMode(isDark) {
      if (isDark) {
        html.classList.add('dark-mode');
        if (body) body.classList.add('dark-mode');
        darkModeSwitch.checked = true;
        // Force style application
        html.style.backgroundColor = '#1a1a1a';
        body.style.backgroundColor = '#1a1a1a';
        body.style.color = '#e0e0e0';
      } else {
        html.classList.remove('dark-mode');
        if (body) body.classList.remove('dark-mode');
        darkModeSwitch.checked = false;
        // Reset to light mode
        html.style.backgroundColor = '';
        body.style.backgroundColor = '';
        body.style.color = '';
      }
    }
    
    applyDarkMode(currentTheme === 'dark');
    
    // Toggle theme
    darkModeSwitch.addEventListener('change', function(e) {
      const isChecked = e.target.checked;
      applyDarkMode(isChecked);
      localStorage.setItem('theme', isChecked ? 'dark' : 'light');
    });
  }
  
  // Run when DOM is ready
  if (document.readyState === 'loading') {
    document.addEventListener('DOMContentLoaded', initDarkMode);
  } else {
    initDarkMode();
  }
})();

