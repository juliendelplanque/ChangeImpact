change impact
pharoImpactedRenameChangePutNextChangesIn: nextChanges andImpactedEntitiesIn: impactedEntities withResponsibleImpact: responsibleImpact
	self ciAllReferences do: [ :method | |impact|
		impact := CIIndirectImpact impactedEntity: method.
		impact responsibleImpact: impact.
		impactedEntities add: impact ]