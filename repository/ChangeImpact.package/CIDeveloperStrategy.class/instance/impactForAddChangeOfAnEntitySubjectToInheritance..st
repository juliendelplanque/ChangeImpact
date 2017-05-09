impact computation
impactForAddChangeOfAnEntitySubjectToInheritance: aCIAddChange
	| addedEntity superEntities |
	addedEntity := aCIAddChange entity.
	superEntities := self inheritanceSuperEntities: addedEntity.
	