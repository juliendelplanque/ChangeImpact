tests
testFindEffectAmongClient
	| c1f1 c1f2 c1m1 c1m2 c1m3 c1 c2m1 c2m2 c2 computer |
	c1f1 := CIFieldForTesting new
		name: 'F1';
		yourself.
	c1f2 := CIFieldForTesting new
		name: 'F2';
		yourself.
	c1m1 := CIMethodForTesting new
		name: 'M1';
		fieldReferences: {c1f1} asSet;
		yourself.
	c1m2 := CIMethodForTesting new
		name: 'M2';
		yourself.
	c1m3 := CIMethodForTesting new
		name: 'M3';
		fieldReferences: {c1f2} asSet;
		methodReferences: {c1m2} asSet;
		yourself.
	c1 := CIClassForTesting new
		name: 'C1';
		fields: {c1f1.c1f2} asSet;
		methods: {c1m1.c1m2.c1m3} asSet;
		yourself.
	c2m1 := CIMethodForTesting new
		name: 'M1';
		methodReferences: {c1m3} asSet;
		yourself.
	c2m2 := CIMethodForTesting new
		name: 'M2';
		methodReferences: {c2m1};
		yourself.
	c2 := CIClassForTesting new
		name: 'C2';
		fields: Set new;
		methods: {c2m1.c2m2} asSet;
		yourself.
	
	"C1>>F2 changed"
	c1 changedFields: {c1f2} asSet.
	computer := CIComputerForTesting new
		classes: {c1.c2};
		changedClasses: {c1};
		setInitialization;
		yourself.
	
	computer affectedClassSet do: [ :c |
		c isDirty ifTrue: [ 
			c beClean.
			computer
				findEffectInClass: c;
				findEffectAmongClient: c ] ].
	
	self
		assert: computer affectedClassSet size equals: 2;
		assert: (computer affectedClassSet includes: c1);
		assert: (computer affectedClassSet includes: c2);
		assert: c1 affectedFieldSet size equals: 1;
		assert: (c1 affectedFieldSet includes: c1f2);
		assert: c1 affectedMethodSet size equals: 1;
		assert: (c1 affectedMethodSet includes: c1m3);
		assert: c2 affectedFieldSet size equals: 0;
		assert: c2 affectedMethodSet size equals: 2;
		assert: (c2 affectedMethodSet includes: c2m1);
		assert: (c2 affectedMethodSet includes: c2m2).