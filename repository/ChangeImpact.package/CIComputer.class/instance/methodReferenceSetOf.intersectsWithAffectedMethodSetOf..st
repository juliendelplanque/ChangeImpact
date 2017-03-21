testing
methodReferenceSetOf: methodOrField intersectsWithAffectedMethodSetOf: aCIClass
	^ ((self methodReferenceSetOf: methodOrField) intersection: aCIClass affectedMethodSet) isNotEmpty