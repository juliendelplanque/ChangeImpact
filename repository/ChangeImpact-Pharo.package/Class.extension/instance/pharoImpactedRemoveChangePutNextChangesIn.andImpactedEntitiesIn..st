*ChangeImpact-Pharo
pharoImpactedRemoveChangePutNextChangesIn: nextChanges andImpactedEntitiesIn: impactedEntities
	"All references to me are impacted."
	self ciAllReferences do: [ :method |
		impactedEntities add: (CIIndirectImpact impactedEntity: method) ].
	
	"My direct subclasses are impacted."
	self subclasses do: [ :subclass |
		nextChanges addFirst: (CIPharoSuperClassRemovedChange entity: subclass).
		impactedEntities add: (CIIndirectImpact impactedEntity: subclass) ].
	
	"My methods will be deleted."
	self methods do: [ :method |
		nextChanges addFirst: (CIRemoveChange entity: method).
		impactedEntities add: (CIIndirectImpact impactedEntity: method) ].
	
	"My attributes will be deleted."
	(self slots collect: [ :slot | CISlotHolder slot: slot origin: self ])
		do: [ :slotHolder |
			nextChanges addFirst: (CIRemoveChange entity: slotHolder).
			impactedEntities add: (CIIndirectImpact impactedEntity: slotHolder) ]