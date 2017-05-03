*ChangeImpact-Pharo
pharoImpactedRemoveChangePutNextChangesIn: nextChanges andImpactedEntitiesIn: impactedEntities withResponsibleImpact: responsibleImpact
	"All references to me are impacted."
	self ciAllReferences do: [ :method | |impact|
		impact := CIIndirectImpact impactedEntity: method.
		impact responsibleImpact: responsibleImpact.
		impactedEntities add: impact ].
	
	"My direct subclasses are impacted."
	self subclasses do: [ :subclass | |impact|
		impact := CIIndirectImpact impactedEntity: subclass.
		impact responsibleImpact: responsibleImpact.
		nextChanges addFirst: (CIPharoSuperClassRemovedChange entity: subclass).
		impactedEntities add: impact ].
	
	"My methods will be deleted."
	self methods do: [ :method | |impact|
		impact := CIIndirectImpact impactedEntity: method.
		impact responsibleImpact: responsibleImpact.
		nextChanges addFirst: (CIRemoveChange entity: method).
		impactedEntities add: impact ].
	
	"My attributes will be deleted."
	(self slots collect: [ :slot | CISlotHolder slot: slot origin: self ])
		do: [ :slotHolder | |impact|
			impact := CIIndirectImpact impactedEntity: slotHolder.
			impact responsibleImpact: responsibleImpact.
			nextChanges addFirst: (CIRemoveChange entity: slotHolder).
			impactedEntities add: impact ]