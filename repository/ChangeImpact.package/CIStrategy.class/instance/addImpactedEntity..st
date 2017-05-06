adding
addImpactedEntity: anEntity
	| impact |
	(self filter shouldEntityBeFiltered: anEntity)
		ifTrue: [ ^ self ].
	impact := CIIndirectImpact new
					impactedEntity: anEntity;
					yourself.
	currentResponsibleImpact addIncucedImpact: impact.
	self impactedEntities add: impact