change impact
pharoImpactedRemoveChangePutNextChangesIn: nextChanges andImpactedEntitiesIn: impactedEntities
	self ciAllReferences do: [ :method |
		impactedEntities add: (CIIndirectImpact impactedEntity: method) ]