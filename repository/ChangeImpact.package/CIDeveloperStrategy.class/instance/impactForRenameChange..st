impact computation
impactForRenameChange: aCIRenameChange
	(self referencesToEntity: aCIRenameChange entity) do: [ :referencingEntity |
		self addChangeToProcess: (CIBodyChange entity: referencingEntity).
		self addImpactedEntity: referencingEntity ].