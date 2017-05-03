*ChangeImpact-Pharo
pharoImpactedMoveChangePutNextChangesIn: nextChanges andImpactedEntitiesIn: impactedEntities withResponsibleImpact: responsibleImpact
	"When moving me, it impacts the methods referencing me in my class."
	self flag: #todo. "Maybe no correct."
	self ciAllReferences
		select: [ :method | method methodClass = self methodClass ]
		thenDo: [ :method | |impact|
			impact := CIIndirectImpact impactedEntity: method.
			impact responsibleImpact: responsibleImpact.
			impactedEntities add: impact ]