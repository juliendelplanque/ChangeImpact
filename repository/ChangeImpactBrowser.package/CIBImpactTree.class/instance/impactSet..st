accessing
impactSet: anObject
	impactSet := anObject.
	self treeModel roots: (impactSet select: #isDirectImpact)