// My overrides

// Disable auto clear cookies after quit Firefox because nobody wants to login again after open Firefox
user_pref("privacy.clearOnShutdown.cookies", false);

// Embed video playback fix
user_pref("network.http.referer.XOriginPolicy", 0);

// Customize browser with FirefoxCSS
user_pref("toolkit.legacyUserProfileCustomizations.stylesheets", true);

// Intergrated calculator at address bar
user_pref("browser.urlbar.suggest.calculator", true);

// Better search on address bar
user_pref("keyword.enabled", true);

// Enable WebGL
user_pref("webgl.disabled", false);
