initialization
initialize
	super initialize.
	self
		associationTypeToTransmissionDecisionMaker: Dictionary new.
	self associationTypeToTransmissionDecisionMaker
		at: FAMIXAccess put: [ :edge :change | self makeDecisionForAccessWithEdge: edge change: change ] asImpactTransmissionDecisionMaker;
		at: FAMIXInvocation put: [ :edge :change | self makeDecisionForInvocationWithEdge: edge change: change ] asImpactTransmissionDecisionMaker;
		at: FAMIXInheritance put: [ :edge :change | self makeDecisionForInheritanceWithEdge: edge change: change ] asImpactTransmissionDecisionMaker;
		at: FAMIXReference put: [ :edge :change | self makeDecisionForReferenceWithEdge: edge change: change ] asImpactTransmissionDecisionMaker