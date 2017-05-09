*ChangeImpact-Pharo
ciAllReferences
	^ (SystemNavigation default allReferencesTo: self binding) asSet collect: #compiledMethod