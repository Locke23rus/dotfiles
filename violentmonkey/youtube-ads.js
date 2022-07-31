// ==UserScript==
// @name        youtube-ads
// @match				https://www.youtube.com/*
// @grant       GM_addStyle
// ==/UserScript==

GM_addStyle(`
#masthead-ad, .ytd-banner-promo-renderer, .ytd-display-ad-renderer {
  display: none !important;
}
`);
