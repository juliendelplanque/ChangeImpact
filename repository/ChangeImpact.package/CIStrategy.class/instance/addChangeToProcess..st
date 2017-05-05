adding
addChangeToProcess: aCIChange
	((self filter shouldChangeBeFiltered: aCIChange) or: [ self isEntityVisited: aCIChange ])
		ifTrue: [ ^ self ].
	self nextChangesToProcess addFirst: aCIChange