// ==UserScript==
// @name        youtube-ads
// @match				https://www.youtube.com/*
// @grant       GM_addStyle
// @version     0.2
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
setTimeout(removeCookieConsent, 1000);
