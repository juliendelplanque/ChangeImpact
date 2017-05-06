*ChangeImpact-Pharo
ciAllReferences
	self flag: #todo. "What about classes impact?"
	^ (SystemNavigation default allReferencesTo: self binding) asSet collect: #compiledMethod