adding
addImpactedEntityFromChange: aChange
	| impact |
	(self filter shouldChangeBeFiltered: aChange)
		ifTrue: [ ^ self ].
	impact := CIIndirectImpact change: aChange.
	currentResponsibleImpact addIncucedImpact: impact.
	self impactedEntities add: impact