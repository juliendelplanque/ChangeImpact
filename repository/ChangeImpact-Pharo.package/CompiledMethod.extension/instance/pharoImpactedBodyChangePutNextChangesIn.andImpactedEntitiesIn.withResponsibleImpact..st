*ChangeImpact-Pharo
pharoImpactedBodyChangePutNextChangesIn: nextChanges andImpactedEntitiesIn: impactedEntities withResponsibleImpact: responsibleImpact
	"When modifying my body, it impacts the methods referencing me."
	self ciAllReferences do: [ :method | |impact|
		impact := CIIndirectImpact impactedEntity: method.
		impact responsibleImpact: responsibleImpact.
		impactedEntities add: impact ]