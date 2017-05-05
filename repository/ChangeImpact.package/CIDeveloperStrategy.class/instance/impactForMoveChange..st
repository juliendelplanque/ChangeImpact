impact computation
impactForMoveChange: aCIMoveChange
	self flag: #todo."TODO manage when a change is moved in inheritance chain."
	(self referencesToEntity: aCIMoveChange entity) do: [ :referencingEntity |
		self addChangeToProcess: (CIBodyChange entity: referencingEntity).
		self addImpactedEntity: referencingEntity ].