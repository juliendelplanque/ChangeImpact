testing
hasInheritanceSubEntities: anEntity
	"Returns true if at least one sub entity in terms of inheritance exists. Else returns false."
	^ (self inheritanceSubEntities: anEntity) isNotEmpty