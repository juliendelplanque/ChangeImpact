impact computation
impactForRenameChange: aCIRenameChange
	(self referencesToEntity: aCIRenameChange entity) do: [ :referencingEntity |
		|change|
		change := CIBodyChange entity: referencingEntity.
		self
			addChangeToProcess: change;
			addImpactedEntityFromChange: change ].
	
	(self inheritanceSuperEntities: aCIRenameChange entity)
		detect: [ :superEntity | (self entityName: superEntity) = aCIRenameChange targetName ]
		ifFound: [ :superEntity |
			(self referencesToEntity: superEntity) do: [ :referencingEntity |
				|change|
				change := CIBodyChange entity: referencingEntity.
				self
					addChangeToProcess: change;
					addImpactedEntityFromChange: change ] ]