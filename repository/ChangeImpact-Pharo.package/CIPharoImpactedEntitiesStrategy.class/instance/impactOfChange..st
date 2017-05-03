impact computation
impactOfChange: aCIChange
	| nextChangesToProcess impactedEntities|
	nextChangesToProcess := LinkedList new.
	impactedEntities := Set new.
	nextChangesToProcess add: aCIChange.
	impactedEntities add: (CIDirectImpact impactedEntity: aCIChange entity).
	[ nextChangesToProcess isEmpty ]
		whileFalse: [ |change responsibleImpact|
			change := nextChangesToProcess removeLast.
			responsibleImpact := impactedEntities detect: [ :impact | impact impactedEntity = change entity ].
			change
				pharoImpactedPutNextChangesIn: nextChangesToProcess andImpactedEntitiesIn: impactedEntities withResponsibleImpact: responsibleImpact ].
	
	^ impactedEntities