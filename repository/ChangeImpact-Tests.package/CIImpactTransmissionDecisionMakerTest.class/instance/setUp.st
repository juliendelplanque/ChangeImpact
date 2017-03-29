running
setUp
	alwaysTransmit := [ :edge :change | true ] asImpactTransmissionDecisionMaker.
	neverTransmit := [ :edge :change | false ] asImpactTransmissionDecisionMaker.
	transmitIfChangeIsRemove := [ :edge :change | change class = CIRemoveChange ] asImpactTransmissionDecisionMaker.