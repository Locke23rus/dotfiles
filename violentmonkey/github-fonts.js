// ==UserScript==
// @name        github-fonts
// @match       https://github.com/*
// @grant       GM_addStyle
// ==/UserScript==

GM_addStyle(`
body {
  font-family: sans-serif !important;
}
pre, 
.blob-code-inner {
  font-family: monospace !important;
}
`);
