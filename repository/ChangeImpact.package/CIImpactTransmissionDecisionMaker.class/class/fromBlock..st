instance creation
fromBlock: aBlock
	^ self new
		decisionBlock: aBlock;
		yourself