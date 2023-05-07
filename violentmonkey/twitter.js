// ==UserScript==
// @name        twitter
// @match				https://twitter.com/*
// @grant       GM_addStyle
// @version     0.1
// ==/UserScript==

GM_addStyle(`
[data-testid="sidebarColumn"] {
  display: none !important;
}
`);
