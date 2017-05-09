testing
hasInheritanceSuperEntities: anEntity
	"Returns true if at least one super entity in terms of inheritance exists. Else returns false."
	^ (self inheritanceSuperEntities: anEntity) isNotEmpty