impact computation
impactOfChange: aCIChange
	| nextChangesToProcess impactedEntities |
	nextChangesToProcess := LinkedList new.
	impactedEntities := Set new.
	[ nextChangesToProcess isEmpty ]
		whileFalse: [ 
			nextChangesToProcess removeLast
				pharoImpactedPutNextChangesIn: nextChangesToProcess andImpactedEntitiesIn: impactedEntities ].
	
	^ impactedEntities