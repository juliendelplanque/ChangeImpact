*ChangeImpact-Pharo
ciAllReferences
	^ (SystemNavigation default
			allAccessesTo: self name from: self definingClass) asSet collect: #compiledMethod