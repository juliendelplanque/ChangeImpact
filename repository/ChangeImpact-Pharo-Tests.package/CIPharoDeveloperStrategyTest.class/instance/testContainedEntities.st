tests-utility
testContainedEntities
	self
		assertCollection: (strategy containedEntities: CITestClass1) hasSameElements: { CITestClass1 slotNamed: #instvar1 . CITestClass1 slotNamed: #instvar2 . CITestClass1 >> #overridedMethod . CITestClass1 >> #methodUsingOverridedMethod . CITestClass1 >> #methodUsingMethodUsingOverridedMethod };
		assertCollection: (strategy containedEntities: CITestSubClass1) hasSameElements: { CITestSubClass1 slotNamed: #instvar3 . CITestSubClass1 >> #overridedMethod . CITestSubClass1 >> #notOverridedMethod . CITestSubClass1 >> #methodUsingNotOverridedMethod};
		assertCollection: (strategy containedEntities: CITestClass2) hasSameElements: { CITestClass2 slotNamed: #instvar4 . CITestClass2 >> #methodReferencingCITestClass1}