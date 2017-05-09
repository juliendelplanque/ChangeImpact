tests-testing
testHasInheritanceSubEntities
	self
		assert: (strategy hasInheritanceSubEntities: CITestClass1>>#overridedMethod);
		deny: (strategy hasInheritanceSubEntities: CITestClass2>>#methodReferencingCITestClass1)