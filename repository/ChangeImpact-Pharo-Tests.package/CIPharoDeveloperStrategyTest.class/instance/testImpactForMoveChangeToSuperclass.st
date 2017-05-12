tests-impact computation
testImpactForMoveChangeToSuperclass
	| change impact |
	change := CIMoveChange new
					baseEntity: CITestSubClass1 >> #methodUsingNotOverridedMethod;
					targetEntity: (CIEntitySubjectToChange new
											ciContainer: CITestClass1;
											ciPackage: CITestClass1 ciPackage;
											yourself);
					yourself.

	impact := strategy impactOfChange: change.
	self
		assert: impact size equals: 2;
		assert: (impact anySatisfy: [ :any | any isDirectImpact and: [ any change class = CIMoveChange and: [ any change baseEntity = change baseEntity and: [ any change targetEntity = change targetEntity ] ] ] ]);
		assert: (impact anySatisfy: [ :any | any isIndirectImpact and: [ any change class = CIBodyChange and: [ any change entity = (CITestSubClass1 >> #methodUsingNotOverridedMethod) ] ] ])