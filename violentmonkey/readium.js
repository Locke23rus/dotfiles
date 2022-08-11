// ==UserScript==
// @name        readium
// @grant       GM_addStyle
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
		let main = document.querySelector("main");
		if (main) {
			Array.from(main.parentNode.children).forEach((node) => {
				if (node.tagName !== "MAIN") {
					node.remove();
				}
			});
		}
	};

	const removeDialog = () => {
		let dialog = document.querySelector("div[role=alert]");
		if (dialog) {
			let parent = dialog;
			while (parent.parentNode.tagName === "DIV") {
				parent = parent.parentNode;
			}
			parent.remove();
		}
	};

	const removeFloatingActions = () => {
		let action = document.querySelector(".pw-multi-vote-icon");
		if (action) {
			action.parentNode.parentNode.remove();
		}
	};

	const removeEverything = () => {
		removeSidebars();
		removeDialog();
		removeFloatingActions();
	};

	removeEverything();
	setTimeout(removeEverything, 1000);
}
