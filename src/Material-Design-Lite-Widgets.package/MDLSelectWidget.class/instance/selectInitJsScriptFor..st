javascript
selectInitJsScriptFor: anId
	^ 'getmdlSelect.init("#' , anId , '");'
	" this ->'document.addEventListener('DOMNodeInserted', function (ev) { componentHandler.upgradeDom(); }, false);' must never add. It's bad pratice. 
	Launch yourself componentHandler.upgradeDom() OR add ONLY ONE TIME at the document this eventListener" 