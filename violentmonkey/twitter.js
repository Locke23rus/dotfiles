// ==UserScript==
// @name        twitter
// @match				https://twitter.com/*
// @grant       GM_addStyle
// @version     0.2
// ==/UserScript==

GM_addStyle(`
[data-testid="sidebarColumn"] {
  display: none !important;
}
`);

const removeAds = () => {
	[...document.querySelectorAll("div[data-testid='cellInnerDiv']")].forEach(
		(card) => {
			if (
				[...card.querySelectorAll("span")].some(
					(span) => span.textContent === "Ad"
				)
			) {
				card.remove();
			}
		}
	);
};

removeAds();
setInterval(removeAds, 1000);
