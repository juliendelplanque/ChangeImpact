*ChangeImpact-Pharo
pharoImpactedRenameChangePutNextChangesIn: nextChanges andImpactedEntitiesIn: impactedEntities
	"All references to me are impacted."
	self ciAllReferences do: [ :method |
		impactedEntities add: (CIIndirectImpact impactedEntity: method) ].