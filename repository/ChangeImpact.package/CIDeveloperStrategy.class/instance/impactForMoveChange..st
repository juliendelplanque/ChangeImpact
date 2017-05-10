impact computation
impactForMoveChange: aCIMoveChange
	(self referencesToEntity: aCIMoveChange entity) do: [ :referencingEntity |
		|change|
		change := CIBodyChange entity: referencingEntity.
		self
			addChangeToProcess: change;
			addImpactedEntityFromChange: change ].