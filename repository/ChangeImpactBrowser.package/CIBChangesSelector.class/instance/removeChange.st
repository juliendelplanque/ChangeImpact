actions
removeChange
	| change |
	change := self changeList selectedItem.
	self performAction: (CIBRemoveChangeAction new
									change: change;
									specModel: self;
									yourself)