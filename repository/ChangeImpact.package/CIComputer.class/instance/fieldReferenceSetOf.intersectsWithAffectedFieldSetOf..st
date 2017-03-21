testing
fieldReferenceSetOf: methodOrField intersectsWithAffectedFieldSetOf: aCIClass
	^ ((self fieldReferenceSetOf: methodOrField) intersection: aCIClass affectedFieldSet) isNotEmpty