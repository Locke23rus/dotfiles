// ==UserScript==
// @name     readium
// @version  1
// @grant    none
// ==/UserScript==


if (document.querySelector('meta[property="og:site_name"][content="Medium"]')) {
  let article = document.querySelector("article")
  if (article) {
    Array.from(article.parentNode.children).forEach(node => {
      if (node.tagName !== "ARTICLE") {
        node.remove(); 
      }
    })
  }
}
