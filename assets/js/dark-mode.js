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
        
        // Force masthead and sidebar to match
        const masthead = document.querySelector('.masthead');
        const mastheadInner = document.querySelector('.masthead__inner-wrap');
        const mastheadMenu = document.querySelector('.masthead__menu');
        const greedyNav = document.querySelector('.greedy-nav');
        const sidebar = document.querySelector('.sidebar');
        const sidebarRight = document.querySelector('.sidebar__right');
        
        if (masthead) masthead.style.backgroundColor = '#1a1a1a';
        if (mastheadInner) mastheadInner.style.backgroundColor = '#1a1a1a';
        if (mastheadMenu) mastheadMenu.style.backgroundColor = '#1a1a1a';
        if (greedyNav) greedyNav.style.backgroundColor = '#1a1a1a';
        if (sidebar) sidebar.style.backgroundColor = '#1a1a1a';
        if (sidebarRight) sidebarRight.style.backgroundColor = '#1a1a1a';
      } else {
        html.classList.remove('dark-mode');
        if (body) body.classList.remove('dark-mode');
        darkModeSwitch.checked = false;
        // Reset to light mode
        html.style.backgroundColor = '';
        body.style.backgroundColor = '';
        body.style.color = '';
        
        // Reset masthead and sidebar
        const masthead = document.querySelector('.masthead');
        const mastheadInner = document.querySelector('.masthead__inner-wrap');
        const mastheadMenu = document.querySelector('.masthead__menu');
        const greedyNav = document.querySelector('.greedy-nav');
        const sidebar = document.querySelector('.sidebar');
        const sidebarRight = document.querySelector('.sidebar__right');
        
        if (masthead) masthead.style.backgroundColor = '';
        if (mastheadInner) mastheadInner.style.backgroundColor = '';
        if (mastheadMenu) mastheadMenu.style.backgroundColor = '';
        if (greedyNav) greedyNav.style.backgroundColor = '';
        if (sidebar) sidebar.style.backgroundColor = '';
        if (sidebarRight) sidebarRight.style.backgroundColor = '';
      }
    }
    
    applyDarkMode(currentTheme === 'dark');
    
    // Re-apply styles after a short delay to ensure DOM is ready
    setTimeout(function() {
      if (currentTheme === 'dark') {
        applyDarkMode(true);
      }
    }, 100);
    
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

