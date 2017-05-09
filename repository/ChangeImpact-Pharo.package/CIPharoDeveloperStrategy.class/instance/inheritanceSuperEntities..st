utility
inheritanceSuperEntities: aCompiledMethod
	^ (aCompiledMethod methodClass superclass canUnderstand: aCompiledMethod selector)
			ifTrue: [ {aCompiledMethod methodClass superclass >> aCompiledMethod selector} ]
			ifFalse: [ #() ]