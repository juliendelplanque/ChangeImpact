initialization
initializeWidgets
	super initializeWidgets.
	changeList := self newIconList.
	addChangeButton := self newButton.
	removeChangeButton := self newButton.
	clearChangeListButton := self newButton.
	acceptChangeListButton := self newButton.
	self focusOrder
		add: changeList