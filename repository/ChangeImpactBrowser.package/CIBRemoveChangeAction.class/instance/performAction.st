action
performAction
	index := self specModel changes indexOf: self change.
	self specModel changes: (self specModel changes copyWithout: self change)