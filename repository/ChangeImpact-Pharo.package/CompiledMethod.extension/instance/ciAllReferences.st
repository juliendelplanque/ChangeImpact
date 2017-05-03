*ChangeImpact-Pharo
ciAllReferences
	^ (SystemNavigation default allCallsOn: self selector) asSet collect: #compiledMethod