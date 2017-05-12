tests-impact computation
testImpactForMoveChangeToSubclass
	| change impact |
	change := CIMoveChange new
					baseEntity: CITestClass1 >> #methodUsingOverridedMethod;
					targetEntity: (CIEntitySubjectToChange new
											ciContainer: CITestSubClass1;
											ciPackage: CITestSubClass1 ciPackage;
											yourself);
					yourself.
	impact := strategy impactOfChange: change.
	self
		assert: impact size equals: 2;
		assert: (impact anySatisfy: [ :any | any isDirectImpact and: [ any change class = CIMoveChange and: [ any change baseEntity = change baseEntity and: [ any change targetEntity = change targetEntity ] ] ] ]);
		assert: (impact anySatisfy: [ :any | any isIndirectImpact and: [ any change class = CIBodyChange and: [ any change entity = (CITestClass1 >> #methodUsingMethodUsingOverridedMethod ) ] ] ])