tests
testFindEffectInClass
	| f1 f2 m1 m2 m3 c1 computer |
	f1 := CIFieldForTesting new
		name: 'F1';
		yourself.
	f2 := CIFieldForTesting new
		name: 'F2';
		yourself.
	m1 := CIMethodForTesting new
		name: 'M1';
		fieldReferences: {f1} asSet;
		yourself.
	m2 := CIMethodForTesting new
		name: 'M2';
		yourself.
	m3 := CIMethodForTesting new
		name: 'M3';
		fieldReferences: {f2} asSet;
		methodReferences: {m2} asSet;
		yourself.
	c1 := CIClassForTesting new
		name: 'C1';
		fields: {f1.	f2} asSet;
		methods: {m1.m2.m3} asSet;
		yourself.
	
	"Impact inside the class when modifying F1"
	c1
		changedFields: {f1} asSet;
		changedMethods: Set new.
	computer := CIComputerForTesting new
		classes: {c1};
		changedClasses: {c1};
		setInitialization;
		yourself.
	computer affectedClassSet do: [ :c |
		c isDirty ifTrue: [ 
			c beClean.
			computer findEffectInClass: c ] ].
	self
		assert: computer changedClasses size equals: 1;
		assert: (computer changedClasses includes: c1);
		assert: computer changedClasses first affectedFieldSet size equals: 1;
		assert: (computer changedClasses first affectedFieldSet includes: f1);
		assert: computer changedClasses first affectedMethodSet size equals: 1;
		assert: (computer changedClasses first affectedMethodSet includes: m1).
	"Impact inside the class when modifying F2"
	c1
		changedFields: {f2} asSet;
		changedMethods: Set new.
	computer := CIComputerForTesting new
		classes: {c1};
		changedClasses: {c1};
		setInitialization;
		yourself.
	computer affectedClassSet do: [ :c |
		c isDirty ifTrue: [ 
			c beClean.
			computer findEffectInClass: c ] ].
	self
		assert: computer changedClasses size equals: 1;
		assert: (computer changedClasses includes: c1);
		assert: computer changedClasses first affectedFieldSet size equals: 1;
		assert: (computer changedClasses first affectedFieldSet includes: f2);
		assert: computer changedClasses first affectedMethodSet size equals: 1;
		assert: (computer changedClasses first affectedMethodSet includes: m3).
	"Impact inside the class when modifying M1"
	c1
		changedFields: Set new;
		changedMethods: {m1} asSet.
	computer := CIComputerForTesting new
		classes: {c1};
		changedClasses: {c1};
		setInitialization;
		yourself.
	computer affectedClassSet do: [ :c |
		c isDirty ifTrue: [ 
			c beClean.
			computer findEffectInClass: c ] ].
	self
		assert: computer changedClasses size equals: 1;
		assert: (computer changedClasses includes: c1);
		assert: computer changedClasses first affectedFieldSet size equals: 0;
		assert: computer changedClasses first affectedMethodSet size equals: 1;
		assert: (computer changedClasses first affectedMethodSet includes: m1).
	"Impact inside the class when modifying M2"
	c1
		changedFields: Set new;
		changedMethods: {m2} asSet.
	computer := CIComputerForTesting new
		classes: {c1};
		changedClasses: {c1};
		setInitialization;
		yourself.
	computer affectedClassSet do: [ :c |
		c isDirty ifTrue: [ 
			c beClean.
			computer findEffectInClass: c ] ].
	self
		assert: computer changedClasses size equals: 1;
		assert: (computer changedClasses includes: c1);
		assert: computer changedClasses first affectedFieldSet size equals: 0;
		assert: computer changedClasses first affectedMethodSet size equals: 2;
		assert: (computer changedClasses first affectedMethodSet includesAllOf: { m2 . m3}).
	"Impact inside the class when modifying M3"
	c1
		changedFields: Set new;
		changedMethods: {m3} asSet.
	computer := CIComputerForTesting new
		classes: {c1};
		changedClasses: {c1};
		setInitialization;
		yourself.
	computer affectedClassSet do: [ :c |
		c isDirty ifTrue: [ 
			c beClean.
			computer findEffectInClass: c ] ].
	self
		assert: computer changedClasses size equals: 1;
		assert: (computer changedClasses includes: c1);
		assert: computer changedClasses first affectedFieldSet size equals: 0;
		assert: computer changedClasses first affectedMethodSet size equals: 1;
		assert: (computer changedClasses first affectedMethodSet includes: m3).