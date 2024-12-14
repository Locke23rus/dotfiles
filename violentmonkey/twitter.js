// ==UserScript==
// @name        twitter
// @match				https://x.com/*
// @grant       GM_addStyle
// @version     0.5
// ==/UserScript==

GM_addStyle(`
[data-testid="sidebarColumn"] {
  display: none !important;
}
`);

const removeAds = () => {
    if (document.hidden) {
        return;
    }
    [...document.querySelectorAll("div[data-testid='cellInnerDiv']")].forEach((card) => {
        if ([...card.querySelectorAll("span")].some((span) => span.textContent === "Ad")) {
            card.style.display = "none";
        }
    });
};

removeAds();
setInterval(removeAds, 1000);
