deciding
shouldTransmitImpactOfChange: aChange
	^ self impactTransmissionDecisionMaker
			shouldImpactBeTransmitted: self change: aChange