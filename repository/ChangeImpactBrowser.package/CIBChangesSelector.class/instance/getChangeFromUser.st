actions
getChangeFromUser
	self flag: #todo.
	^ CIChange subclasses atRandom new