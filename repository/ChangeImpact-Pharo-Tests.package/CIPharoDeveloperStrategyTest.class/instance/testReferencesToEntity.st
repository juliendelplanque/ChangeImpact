tests-utility
testReferencesToEntity
	self
		assertCollection: ((strategy referencesToEntity: CITestClass1) reject: [ :e | strategy filter shouldEntityBeFiltered: e ])
		hasSameElements: { CITestClass2>>#methodReferencingCITestClass1 };
		assertCollection: ((strategy referencesToEntity: CITestClass1>>#overridedMethod) reject: [ :e | strategy filter shouldEntityBeFiltered: e ])
		hasSameElements: { CITestSubClass1>>#overridedMethod }