action
performAction
	self clearedChanges: self specModel changes.
	self specModel
		changes: #()