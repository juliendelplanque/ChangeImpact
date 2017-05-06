impact computation
impactOfChangeSet: aListOfChanges
	nextChangesToProcess := LinkedList new.
	impactedEntities := Set new.
	visitedEntities := Set new.
	aListOfChanges do: [ :change | self addChangeToProcess: change ].
	aListOfChanges do: [ :change | impactedEntities add: (CIDirectImpact impactedEntity: change entity) ].
	[ nextChangesToProcess isEmpty ]
		whileFalse: [ |change|
			change := self nextChangeToProcess.
			self addEntityVisited: change entity.
			currentResponsibleImpact := impactedEntities detect: [ :impact | impact impactedEntity = change entity ].
			change
				impactForStrategy: self ].
	
	^ impactedEntities