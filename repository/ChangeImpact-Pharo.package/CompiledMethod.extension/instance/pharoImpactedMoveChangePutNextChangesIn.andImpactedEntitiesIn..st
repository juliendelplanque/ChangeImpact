*ChangeImpact-Pharo
pharoImpactedMoveChangePutNextChangesIn: nextChanges andImpactedEntitiesIn: impactedEntities
	"When moving me, it impacts the methods referencing me in my class."
	self flag: #todo. "Maybe no correct."
	self ciAllReferences
		select: [ :method | method methodClass = self methodClass ]
		thenDo: [ :method | impactedEntities add: (CIIndirectImpact impactedEntity: method) ]