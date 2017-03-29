actions
addChange
	| change |
	change := self getChangeFromUser.
	self performAction: (CIBAddChangeAction new
									change: change;
									specModel: self;
									yourself)