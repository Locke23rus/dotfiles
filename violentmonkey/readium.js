// ==UserScript==
// @name        readium
// @grant       GM_addStyle
// ==/UserScript==

GM_addStyle(`
header,
#credential_picker_container {
  display: none!important;
}
`);

if (document.querySelector('meta[property="og:site_name"][content="Medium"]')) {
  const removeSidebars = () => {
    let main = document.querySelector("main");
    if (main) {
      Array.from(main.parentNode.children).forEach((node) => {
        if (node.tagName !== "MAIN") {
          node.remove();
        }
      });
    }
  };

  const deleteDialog = () => {
    let dialog = document.querySelector("div[role=alert]");
    if (dialog) {
      let parent = dialog;
      while (parent.parentNode.tagName === "DIV") {
        parent = parent.parentNode;
      }
      parent.remove();
    }
  };

  removeSidebars();
  deleteDialog();
  setTimeout(deleteDialog, 1000);
}
