tests-utility
testContainerEntity
	self
		assert: (strategy containerEntity: (CITestClass1 slotNamed: #instvar2)) equals: CITestClass1;
		assert: (strategy containerEntity: (CITestSubClass1 >> #overridedMethod)) equals: CITestSubClass1;
		assert: (strategy containerEntity: (CITestClass2 >> #methodReferencingCITestClass1)) equals: CITestClass2