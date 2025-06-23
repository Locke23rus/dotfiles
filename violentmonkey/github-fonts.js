// ==UserScript==
// @name        github-fonts
// @match       https://github.com/*
// @grant       GM_addStyle
// @version     0.3
// ==/UserScript==

GM_addStyle(`
body {
  font-family: sans-serif !important;
}
tt,
code,
samp,
pre,
.blob-code-inner,
textarea[data-testid="read-only-cursor-text-area"],
.text-mono,
.commit-ref {
  font-family: monospace !important;
}
`);
