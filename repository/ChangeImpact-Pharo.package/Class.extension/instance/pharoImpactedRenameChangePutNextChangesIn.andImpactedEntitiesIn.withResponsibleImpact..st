*ChangeImpact-Pharo
pharoImpactedRenameChangePutNextChangesIn: nextChanges andImpactedEntitiesIn: impactedEntities withResponsibleImpact: responsibleImpact
	"All references to me are impacted."
	self ciAllReferences do: [ :method | |impact|
		impact := CIIndirectImpact impactedEntity: method.
		impact responsibleImpact: responsibleImpact.
		impactedEntities add: impact ].