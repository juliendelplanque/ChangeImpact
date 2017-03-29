running
setUp
	edgeAlwaysTransmit := CIEdge new.
	edgeNeverTransmit := CIEdge new
									impactTransmissionDecisionMaker: [ :edge :change | false ] asImpactTransmissionDecisionMaker;
									yourself.
	edgeTransmitIfRemove := CIEdge new
									impactTransmissionDecisionMaker: [ :edge :change | change class = CIRemoveChange ] asImpactTransmissionDecisionMaker;
									yourself.