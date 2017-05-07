impact computation
impactForAddChangeOfAnEntitySubjectToInheritance: aCIAddChange
	| method superContainer |
	method := aCIAddChange entity.
	superContainer := method methodClass superclass.
	