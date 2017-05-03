change impact
pharoImpactedRemoveChangePutNextChangesIn: nextChanges andImpactedEntitiesIn: impactedEntities withResponsibleImpact: responsibleImpact
	self ciAllReferences do: [ :method | |impact|
		impact := CIIndirectImpact impactedEntity: method.
		impact responsibleImpact: responsibleImpact.
		impactedEntities add: impact ]