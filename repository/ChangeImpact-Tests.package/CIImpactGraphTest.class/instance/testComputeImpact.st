tests-computing
testComputeImpact
	self
		assertCollection: (impactGraph computeImpact; impactedNodes)
		hasSameElements: { changed . n1 . n11 }