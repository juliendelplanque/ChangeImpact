*ChangeImpact-Pharo
pharoImpactedRenameChangePutNextChangesIn: nextChanges andImpactedEntitiesIn: impactedEntities
	"When renaming me, it impacts the methods referencing me."
	self ciAllReferences do: [ :method |
		impactedEntities add: (CIIndirectImpact impactedEntity: method) ]