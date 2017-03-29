action
performAction
	self specModel announce: (CIBChangeCreated new
										change: self change;
										yourself)