tests-utility
testInheritanceSuperEntities
	self
		assertCollection: (strategy inheritanceSuperEntities: CITestSubClass1>>#overridedMethod) hasSameElements: { CITestClass1>>#overridedMethod };
		assert: (strategy inheritanceSuperEntities: CITestClass2>>#methodReferencingCITestClass1) isEmpty