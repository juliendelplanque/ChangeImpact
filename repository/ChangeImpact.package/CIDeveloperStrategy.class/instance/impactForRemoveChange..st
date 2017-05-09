impact computation
impactForRemoveChange: aCIRemoveChange
	(self referencesToEntity: aCIRemoveChange entity) do: [ :referencingEntity |
		self addChangeToProcess: (CIBodyChange entity: referencingEntity).
		self addImpactedEntity: referencingEntity ].
	
	(self containedEntities: aCIRemoveChange entity) do: [ :containedEntity |
		self addChangeToProcess: (CIRemoveChange entity: containedEntity).
		self addImpactedEntity: containedEntity ]