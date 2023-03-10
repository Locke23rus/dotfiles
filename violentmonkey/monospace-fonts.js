// ==UserScript==
// @name        monospace-fonts
// @grant       GM_addStyle
// @version     0.2
// ==/UserScript==

GM_addStyle(`
pre.code-block-inner,
tt,
code,
samp {
  font-family: monospace !important;
	font-variant-ligatures: normal !important;
}
`);
