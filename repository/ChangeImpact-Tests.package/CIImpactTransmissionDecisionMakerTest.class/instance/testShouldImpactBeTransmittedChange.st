tests-deciding
testShouldImpactBeTransmittedChange
	self
		assert: (alwaysTransmit shouldImpactBeTransmitted: CIEdge new change: CIChange new);
		deny: (neverTransmit shouldImpactBeTransmitted: CIEdge new change: CIChange new);
		assert: (transmitIfChangeIsRemove shouldImpactBeTransmitted: CIEdge new change: CIRemoveChange new);
		deny: (transmitIfChangeIsRemove shouldImpactBeTransmitted: CIEdge new change: CIAddChange new)