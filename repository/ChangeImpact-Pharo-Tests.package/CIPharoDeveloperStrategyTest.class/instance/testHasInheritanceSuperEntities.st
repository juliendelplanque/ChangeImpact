tests-testing
testHasInheritanceSuperEntities
	self
		assert: (strategy hasInheritanceSuperEntities: CITestSubClass1>>#overridedMethod) ;
		deny: (strategy hasInheritanceSuperEntities: CITestClass2>>#methodReferencingCITestClass1) 