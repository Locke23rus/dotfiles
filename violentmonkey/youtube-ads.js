// ==UserScript==
// @name        youtube-ads
// @match				https://www.youtube.com/*
// @grant       GM_addStyle
// @version     0.1
// ==/UserScript==

GM_addStyle(`
#masthead-ad, .ytd-banner-promo-renderer, .ytd-display-ad-renderer, ytd-rich-section-renderer {
  display: none !important;
}
`);
