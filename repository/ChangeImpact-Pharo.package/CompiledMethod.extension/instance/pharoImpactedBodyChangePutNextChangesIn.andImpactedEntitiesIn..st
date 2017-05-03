*ChangeImpact-Pharo
pharoImpactedBodyChangePutNextChangesIn: nextChanges andImpactedEntitiesIn: impactedEntities
	"When modifying my body, it impacts the methods referencing me."
	self ciAllReferences do: [ :method |
		impactedEntities add: (CIIndirectImpact impactedEntity: method) ]