adding
addEntityVisited: anEntity
	(self filter shouldEntityBeFiltered: anEntity)
		ifTrue: [ ^ self ].
	visitedEntities add: anEntity