tests-testing
testIsSubjectToInheritance
	self
		assert: (strategy isSubjectToInheritance: CITestClass1>>#overridedMethod);
		assert: (strategy isSubjectToInheritance: CITestSubClass1>>#notOverridedMethod);
		deny: (strategy isSubjectToInheritance: CITestClass1);
		deny: (strategy isSubjectToInheritance: (CITestClass1 slotNamed: #instvar1));
		deny: (strategy isSubjectToInheritance: CIEntitySubjectToChange new)