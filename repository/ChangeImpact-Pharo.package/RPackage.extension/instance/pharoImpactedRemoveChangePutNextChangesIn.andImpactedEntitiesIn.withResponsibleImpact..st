*ChangeImpact-Pharo
pharoImpactedRemoveChangePutNextChangesIn: nextChanges andImpactedEntitiesIn: impactedEntities withResponsibleImpact: responsibleImpact
	"All classes I hold will be removed."
	self definedClasses do: [ :class | |impact|
		impact := CIIndirectImpact impactedEntity: class.
		impact responsibleImpact: responsibleImpact.
		nextChanges addFirst: (CIRemoveChange entity: class).
		impactedEntities add: impact ].
	
	"All extensions defined by myself in foreign classes will be removed."
	self extensionMethods do: [ :method | |impact|
		impact := CIIndirectImpact impactedEntity: method.
		impact responsibleImpact: responsibleImpact.
		nextChanges addFirst: (CIRemoveChange entity: method).
		impactedEntities add: impact ]