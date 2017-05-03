impact computation
impactOfChange: aCIChange
	| nextChangesToProcess impactedEntities |
	nextChangesToProcess := LinkedList new.
	impactedEntities := Set new.
	nextChangesToProcess add: aCIChange.
	impactedEntities add: (CIDirectImpact entity: aCIChange entity).
	[ nextChangesToProcess isEmpty ]
		whileFalse: [ 
			nextChangesToProcess removeLast
				pharoImpactedPutNextChangesIn: nextChangesToProcess andImpactedEntitiesIn: impactedEntities ].
	
	^ impactedEntities