action
cancelAction
	self specModel
		changes: (self specModel changes copyFrom: 1 to: index-1), {self change},
					(self specModel changes copyFrom: index to: self specModel changes size)