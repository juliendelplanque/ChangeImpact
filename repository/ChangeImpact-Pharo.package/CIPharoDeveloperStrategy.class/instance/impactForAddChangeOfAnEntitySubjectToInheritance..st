impact computation
impactForAddChangeOfAnEntitySubjectToInheritance: aCIAddChange
	(self inheritanceSuperEntities: aCIAddChange entity) do: [ :e |
		(self referencesToEntity: e) do: [ :ref |
			|change|
			change := CIBodyChange entity: ref.
			self
				addChangeToProcess: change;
				addImpactedEntityFromChange: change ] ]