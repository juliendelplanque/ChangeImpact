*ChangeImpact
asImpactTransmissionDecisionMaker
	self argumentCount = 2
		ifFalse: [ self error: 'The block must have exactly 2 arguments.' ].
	
	^ CIImpactTransmissionDecisionMaker fromBlock: self