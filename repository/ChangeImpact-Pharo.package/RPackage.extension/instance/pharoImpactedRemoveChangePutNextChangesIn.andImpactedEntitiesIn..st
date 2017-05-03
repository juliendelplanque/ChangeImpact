*ChangeImpact-Pharo
pharoImpactedRemoveChangePutNextChangesIn: nextChanges andImpactedEntitiesIn: impactedEntities
	"All classes I hold will be removed."
	self definedClasses do: [ :class | |change|
		change := CIRemoveChange entity: class.
		nextChanges addFirst: change.
		impactedEntities add: change ].
	
	"All extensions defined by myself in foreign classes will be removed."
	self extensionMethods do: [ :method | |change|
		change := CIRemoveChange entity: method.
		nextChanges addFirst: change.
		impactedEntities add: change ]