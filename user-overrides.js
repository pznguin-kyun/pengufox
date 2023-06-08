// My overrides

// Change startup page to homepage instead of blank page
user_pref("browser.startup.page", 1);

// Set homepage to Firefox Home
user_pref("browser.startup.homepage", "about:home");

// Add new tab page
user_pref("browser.newtabpage.enabled", true);

// Disable auto clear cookies after quit Firefox because nobody wants to login again after open Firefox
user_pref("privacy.clearOnShutdown.cookies", false);

// Embed video playback fix
user_pref("network.http.referer.XOriginPolicy", 0);

// Customize browser with FirefoxCSS
user_pref("toolkit.legacyUserProfileCustomizations.stylesheets", true);

// Intergrated calculator at address bar
user_pref("browser.urlbar.suggest.calculator", true);

// Better search on address bar
user_prefs("keyword.enabled", true);
user_prefs("browser.search.suggest.enabled", true);
