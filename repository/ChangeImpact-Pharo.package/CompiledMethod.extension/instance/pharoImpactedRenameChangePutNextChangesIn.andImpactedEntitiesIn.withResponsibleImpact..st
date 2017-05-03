*ChangeImpact-Pharo
pharoImpactedRenameChangePutNextChangesIn: nextChanges andImpactedEntitiesIn: impactedEntities withResponsibleImpact: responsibleImpact
	"When renaming me, it impacts the methods referencing me."
	self ciAllReferences do: [ :method | |impact|
		impact := CIIndirectImpact impactedEntity: method.
		impact responsibleImpact: responsibleImpact.
		impactedEntities add: impact ]