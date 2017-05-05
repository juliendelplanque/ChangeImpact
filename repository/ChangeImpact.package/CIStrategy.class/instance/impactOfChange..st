impact computation
impactOfChange: aCIChange
	nextChangesToProcess := LinkedList new.
	impactedEntities := Set new.
	visitedEntities := Set new.
	self addChangeToProcess: aCIChange.
	impactedEntities add: (CIDirectImpact impactedEntity: aCIChange entity).
	[ nextChangesToProcess isEmpty ]
		whileFalse: [ |change|
			change := self nextChangeToProcess.
			self addEntityVisited: change entity.
			currentResponsibleImpact := impactedEntities detect: [ :impact | impact impactedEntity = change entity ].
			change
				impactForStrategy: self ].
	
	^ impactedEntities