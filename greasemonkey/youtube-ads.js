// ==UserScript==
// @name     youtube-ads
// @version  1
// @grant    none
// @match https://www.youtube.com/
// ==/UserScript==

function removeBanners() {
	document.querySelector("ytd-banner-promo-renderer,#masthead-ad,ytd-display-ad-renderer")?.remove();
}
  
  
removeBanners();  
setInterval(removeBanners, 2500)
