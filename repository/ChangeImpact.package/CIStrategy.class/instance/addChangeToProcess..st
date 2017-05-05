adding
addChangeToProcess: aCIChange
	(self isEntityVisited: aCIChange)
		ifTrue: [ ^ self ].
	self nextChangesToProcess addFirst: aCIChange