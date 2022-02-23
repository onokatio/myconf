//override arkenfox
user_pref("browser.startup.page", 3);
user_pref("privacy.clearOnShutdown.history", false);
user_pref("keyword.enabled", true);
user_pref("browser.search.suggest.enabled", true);
user_pref("browser.urlbar.suggest.searches", true);
//user_pref("browser.cache.disk.enable", true);
user_pref("media.eme.enabled", true);
user_pref("webgl.disabled", false);
user_pref("browser.link.open_newwindow.restriction", 2);
user_pref("dom.disable_open_during_load", false);
user_pref("dom.popup_allowed_events","change click dblclick mouseup pointerup notificationclick reset submit touchend");
user_pref("network.dns.disablePrefetch", false);
user_pref("network.dns.disablePrefetchFromHTTPS", false);
user_pref("network.predictor.enabled", true);
user_pref("network.predictor.enable-prefetch", true);
user_pref("network.prefetch-next", true);
user_pref("browser.newtab.preload", true);
user_pref("security.tls.enable_0rtt_data", true);
user_pref("security.tls.version.enable-deprecated", true);
user_pref("security.OCSP.enabled", 2);
user_pref("security.OCSP.require", false);
user_pref("media.autoplay.default", 0);
user_pref("security.ssl.require_safe_negotiation",false);
user_pref("security.ssl.treat_unsafe_negotiation_as_broken", false);
user_pref("app.update.auto", true);
user_pref("app.update.background.scheduling.enabled", true);
user_pref("privacy.resistFingerprinting.letterboxing", false);
user_pref("privacy.window.maxInnerWidth", 1600);
user_pref("privacy.window.maxInnerHeight", 900);
user_pref("privacy.resistFingerprinting", false);
user_pref("media.autoplay.blocking_policy", 0);
user_pref("network.http.speculative-parallel-limit",16);
user_pref("network.http.referer.XOriginPolicy", 0);
user_pref("network.dns.disableIPv6", false);

user_pref("_user.js.parrot", "OVERRIDE: success override arkenfox");

//user_pref("network.security.esni.enabled", true);
user_pref("network.trr.bootstrapAddress", "1.1.1.1");
user_pref("network.trr.custom_uri", "https://security.cloudflare-dns.com/dns-query");
//user_pref("network.trr.mode", 2);
user_pref("network.trr.uri", "https://security.cloudflare-dns.com/dns-query");
//user_pref("browser.safebrowsing.malware.enabled", false);
//user_pref("browser.safebrowsing.phishing.enabled", false);
user_pref("network.predictor.enable-hover-on-ssl", true);
//user_pref("dom.webgpu.enabled", true);
//user_pref("layers.acceleration.force-enabled", true);
//user_pref("webgl.force-enabled", true);
//user_pref("webgl.dxgl.enabled", true);
//user_pref("webgl.msaa-force", true);
//user_pref("gfx.canvas.azure.accelerated", true);
//user_pref("gfx.canvas.azure.backends", "direct2d1.1,skia");
//user_pref("gfx.content.azure.backends", "direct2d1.1,skia");
//user_pref("gfx.direct2d.force-enabled", true);
//user_pref("gfx.text.subpixel-position.force-enabled", true);
//user_pref("gfx.webrender.compositor", true);
//user_pref("toolkit.legacyUserProfileCustomizations", true);
user_pref("browser.sessionstore.warnOnQuit", true);
user_pref("browser.warnOnQuit", true);
//user_pref("widget.wayland-dmabuf-vaapi.enabled", true);
user_pref("toolkit.legacyUserProfileCustomizations.stylesheets", true);
user_pref("image.avif.enabled", true);
user_pref("layout.css.grid-template-masonry-value.enabled", true);
//user_pref("fission.autostart", true); //avaliable on nightly only
//user_pref("media.ffvpx.enabled", false);
// now firefox beta use software even wayland/vaapi is enabled.
user_pref("browser.translation.detectLanguage", true);
user_pref("browser.translation.engine", "Google");
user_pref("browser.translation.ui.show", true);
user_pref("network.dns.echconfig.enabled",true);
user_pref("network.dns.http3_echconfig.enabled",true);
user_pref("network.dns.use_https_rr_as_altsvc",true);
user_pref("svg.context-properties.content.enabled",true);
user_pref("extensions.pocket.enabled",false);
user_pref("browser.translation.google.apiURL","https://translation.googleapis.com/language/translate/v2");


user_pref("_user.js.parrot", "OVERRIDE: success original section");
