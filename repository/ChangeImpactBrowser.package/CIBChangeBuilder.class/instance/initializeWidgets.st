initialization
initializeWidgets
	super initializeWidgets.
	changeDropList := self newDropList.
	dropListLabel := self newLabel.
	okButton := self newButton.
	cancelButton := self newButton.
	modelBrowserLabel := self newLabel.
	self initializeModelBrowserWidget