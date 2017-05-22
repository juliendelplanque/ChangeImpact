exploring
inheritanceSubEntities: aCompiledMethod
	^ (aCompiledMethod methodClass subclasses)
			select: [ :subclass | subclass canUnderstand: aCompiledMethod selector ]
			thenCollect: [ :subclass | subclass >> aCompiledMethod selector ]