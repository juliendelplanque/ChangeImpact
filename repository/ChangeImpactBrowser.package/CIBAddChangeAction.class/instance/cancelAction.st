action
cancelAction
	self specModel changes: (self specModel changes copyWithout: self change)