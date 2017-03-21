testing
shouldMethod: method beInAffectedMethodSetOf: aCIClass
	^ (self methodReferenceSetOf: method intersectsWithAffectedMethodSetOf: aCIClass)
			or: [ (self fieldReferenceSetOf: method intersectsWithAffectedFieldSetOf: aCIClass) ]