action
performAction
	self specModel announce: (CIBChangeImpactComputationRequested new
										changesSelected: self specModel changes;
										yourself)