testing
shouldField: field beInAffectedFieldSetOf: aCIClass
	^ (self methodReferenceSetOf: field intersectsWithAffectedMethodSetOf: aCIClass)
			or: [ (self fieldReferenceSetOf: field intersectsWithAffectedFieldSetOf: aCIClass) ]