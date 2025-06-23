// ==UserScript==
// @name        monospace-fonts
// @grant       GM_addStyle
// @version     0.4
// ==/UserScript==

GM_addStyle(`
textarea[data-testid="read-only-cursor-text-area"],
pre.code-block-inner,
pre[data-language],
tt,
code,
samp {
  font-family: monospace !important;
	font-variant-ligatures: normal !important;
}
`);
