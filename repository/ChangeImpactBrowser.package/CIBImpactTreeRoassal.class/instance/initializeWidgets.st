initialization
initializeWidgets
	roassal := self instantiate: RoassalModel.
	layoutDropList := self newDropList.
	circleSizeInput := self newTextInput.
	layoutDropListLabel := self newLabel.
	circleSizeInputLabel := self newLabel