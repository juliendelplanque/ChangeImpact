tests-deciding
testShouldTransmitImpactOfChange
	self
		assert: (edgeAlwaysTransmit shouldTransmitImpactOfChange: CIAddChange new);
		deny: (edgeNeverTransmit shouldTransmitImpactOfChange: CIAddChange new);
		assert: (edgeTransmitIfRemove shouldTransmitImpactOfChange: CIRemoveChange new);
		deny: (edgeTransmitIfRemove shouldTransmitImpactOfChange: CIAddChange new)