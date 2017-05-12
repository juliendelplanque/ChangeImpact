impact computation
impactForMoveChangeInSuperclasses: aMoveChange
	"If an entity is a method and is moved to superclass, then the impact is that
	 the body of the method may be changed if it was using methods or attributes
	 of the original class holding it."
	| bodyChange entitiesInSameClass entitiesUsed |
	aMoveChange baseEntity isCompiledMethod
		ifFalse: [ ^ self ].
		
	entitiesInSameClass := (self containedEntities: (self containerEntity: aMoveChange baseEntity))
										copyWithout: aMoveChange entity.
	entitiesUsed := entitiesInSameClass select: [ :e |
							(self referencesToEntity: e) includes: aMoveChange entity ].
	entitiesUsed ifNotEmpty: [ 
		bodyChange := CIBodyChange entity: aMoveChange baseEntity.
		self
			addChangeToProcess: bodyChange;
			addImpactedEntityFromChange: bodyChange ]