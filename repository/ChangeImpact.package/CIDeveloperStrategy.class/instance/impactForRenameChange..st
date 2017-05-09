impact computation
impactForRenameChange: aCIRenameChange
	(self referencesToEntity: aCIRenameChange entity) do: [ :referencingEntity |
		|change|
		change := CIBodyChange entity: referencingEntity.
		self
			addChangeToProcess: change;
			addImpactedEntityFromChange: change ].