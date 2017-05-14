tests-impact computation
testImpactForRemoveChange
	| change impact |
	change := CIRemoveChange entity: CITestClass1.
	impact := strategy impactOfChange: change.
	
	self 
		assert: impact size equals: 11;
		assert: (impact anySatisfy: [ :i | i isDirectImpact and: [ i change class = CIRemoveChange and: [ i change entity = CITestClass1 ] ] ]);
		assert: (impact anySatisfy: [ :i | i isIndirectImpact and: [ i change class = CIRemoveChange and: [ i change entity = (CITestClass1>>#methodUsingMethodUsingOverridedMethod) ] ] ]);
		assert: (impact anySatisfy: [ :i | i isIndirectImpact and: [ i change class = CIRemoveChange and: [ i change entity = (CITestClass1>>#methodUsingOverridedMethod) ] ] ]);
		assert: (impact anySatisfy: [ :i | i isIndirectImpact and: [ i change class = CIRemoveChange and: [ i change entity = (CITestClass1>>#overridedMethod) ] ] ]);
		assert: (impact anySatisfy: [ :i | i isIndirectImpact and: [ i change class = CIRemoveChange and: [ i change entity = (CITestClass1 slotNamed: #instvar1) ] ] ]);
		assert: (impact anySatisfy: [ :i | i isIndirectImpact and: [ i change class = CIRemoveChange and: [ i change entity = (CITestClass1 slotNamed: #instvar2) ] ] ]);
		assert: (impact anySatisfy: [ :i | i isIndirectImpact and: [ i change class = CIRemoveChange and: [ i change entity = (CITestClass1 slotNamed: #instvar1) ] ] ]);
		assert: (impact anySatisfy: [ :i | i isIndirectImpact and: [ i change class = CIBodyChange and: [ i change entity = CITestSubClass1 ] ] ]);
		assert: (impact anySatisfy: [ :i | i isIndirectImpact and: [ i change class = CIBodyChange and: [ i change entity = (CITestClass2>>#methodReferencingCITestClass1) ] ] ]);
		assert: (impact anySatisfy: [ :i | i isIndirectImpact and: [ i change class = CIBodyChange and: [ i change entity = (CITestSubClass1>>#overridedMethod) ] ] ]);
		assert: (impact anySatisfy: [ :i | i isIndirectImpact and: [ i change class = CIBodyChange and: [ i change entity = (CITestClass1>>#methodUsingOverridedMethod) ] ] ])