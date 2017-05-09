impact computation
impactForMoveChange: aCIMoveChange
	self flag: #todo."TODO manage when a change is moved in inheritance chain."
	(self referencesToEntity: aCIMoveChange entity) do: [ :referencingEntity |
		|change|
		change := CIBodyChange entity: referencingEntity.
		self
			addChangeToProcess: change;
			addImpactedEntityFromChange: change ].