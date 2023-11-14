// ==UserScript==
// @name        youtube-ads
// @match				https://www.youtube.com/*
// @grant       GM_addStyle
// @version     0.3
// ==/UserScript==

GM_addStyle(`
#masthead-ad, .ytd-banner-promo-renderer, .ytd-display-ad-renderer, ytd-rich-section-renderer {
  display: none !important;
}
`);

function removeCookieConsent() {
	const consent = document.querySelector("ytd-consent-bump-v2-lightbox");
	consent?.remove();
}

removeCookieConsent();
setTimeout(removeCookieConsent, 10000);
for (let i = 0; i < 10; i++) {
	setTimeout(removeCookieConsent, i * 500);
}
