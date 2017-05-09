tests-utility
testInheritanceSubEntities
	self
		assertCollection: (strategy inheritanceSubEntities: CITestClass1>>#overridedMethod) hasSameElements: { CITestSubClass1>>#overridedMethod };
		assert: (strategy inheritanceSubEntities: CITestClass2>>#methodReferencingCITestClass1) isEmpty