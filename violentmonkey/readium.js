// ==UserScript==
// @name        readium
// @grant       GM_addStyle
// @version     0.3
// ==/UserScript==

if (document.querySelector('meta[property="og:site_name"][content="Medium"]')) {
    GM_addStyle(`
header,
footer,
#credential_picker_container {
  display: none!important;
}
`);

    const removeSidebars = () => {
        const main = document.querySelector("main");
        if (main) {
            Array.from(main.parentNode.children).forEach((node) => {
                if (node.tagName !== "MAIN") {
                    node.remove();
                }
            });
        }
    };

    const removeDialog = () => {
        const dialog = document.querySelector("div[role=alert]");
        if (dialog) {
            let parent = dialog;
            while (parent.parentNode.tagName === "DIV") {
                parent = parent.parentNode;
            }
            parent.remove();
        }
    };

    const removeFloatingActions = () => {
        [...document.querySelectorAll(".pw-multi-vote-icon")].forEach((action) => {
            if (action) {
                action.parentNode.parentNode.remove();
            }
        });
    };

    const removeTopToolbar = () => {
        const toolbar = document.querySelector("a[aria-label='Homepage']");
        if (toolbar) {
            toolbar.parentNode.parentNode.remove();
        }
    };

    const removeSignupSectionBeforeArticle = () => {
        const p = [...document.querySelectorAll("p")].find((p) => {
            const text = p.textContent;
            return text.includes("free member-only") && text.includes("left this month");
        });
        if (p) {
            p.parentNode.parentNode.remove();
        }
    };

    const removeTopHeader = () => {
        const node = [...document.querySelectorAll("div")].find((p) => p.textContent === "Published in");
        if (node) {
            node.parentNode.parentNode.remove();
        }
    };

    const removeEverythingAfterFooter = () => {
        const footer = document.querySelector("footer");
        if (footer) {
            const siblings = [...footer.parentNode.children];
            const footerIndex = siblings.findIndex((node) => node.tagName === "FOOTER");
            siblings.forEach((node, index) => {
                if (index > footerIndex) {
                    node.remove();
                }
            });
        }
    };

    const removeEverything = () => {
        removeSidebars();
        removeDialog();
        removeFloatingActions();
        removeTopToolbar();
        removeTopHeader();
        removeSignupSectionBeforeArticle();
    };

    removeEverything();
    setTimeout(removeEverything, 1000);
    setTimeout(removeEverythingAfterFooter, 2000);
}
