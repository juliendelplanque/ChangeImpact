initialization
initialize
	super initialize.
	self
		"By default, an edge transmit the impact whatever the kind of edge and change."
		impactTransmissionDecisionMaker: (CIImpactTransmissionDecisionMaker fromBlock: [ :edge :change | true ])