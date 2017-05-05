adding
addImpactedEntity: anEntity
	| impact |
	impact := CIIndirectImpact new
					impactedEntity: anEntity;
					yourself.
	currentResponsibleImpact addIncucedImpact: impact.
	self impactedEntities add: impact