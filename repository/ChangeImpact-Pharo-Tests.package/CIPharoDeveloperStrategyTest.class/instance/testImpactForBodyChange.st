tests-impact computation
testImpactForBodyChange
	| change impact |
	change := CIBodyChange entity: CITestClass1 >> #methodUsingOverridedMethod.
	impact := strategy impactOfChange: change.
	
	self
		assert: impact size equals: 1;
		assert: impact anyOne class equals: CIDirectImpact;
		assert: impact anyOne change equals: change