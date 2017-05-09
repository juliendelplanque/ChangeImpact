impact computation
impactForRemoveChange: aCIRemoveChange
	(self referencesToEntity: aCIRemoveChange entity) do: [ :referencingEntity |
		|change|
		change := CIBodyChange entity: referencingEntity.
		self
			addChangeToProcess: change;
			addImpactedEntityFromChange: change ].
	
	(self containedEntities: aCIRemoveChange entity) do: [ :containedEntity |
		|change|
		change := CIRemoveChange entity: containedEntity.
		self
			addChangeToProcess: change;
			addImpactedEntityFromChange: change ]