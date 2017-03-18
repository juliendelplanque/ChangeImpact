computation
findEffectInClass: aCIClass
	| cleanMethods cleanFields |
	cleanMethods := OrderedCollection new.
	cleanFields := OrderedCollection new.
	"Loop on methods of the class"
	aCIClass methods do: [ :method |
		((aCIClass affectedMethodSet includes: method) and: [ 
			((self methodReferenceSetOf: method) intersection: aCIClass affectedMethodSet) isNotEmpty
				or: [ ((self fieldReferenceSetOf: method) intersection: aCIClass affectedFieldSet) isNotEmpty ] ]
		)
			ifTrue: [ 
				aCIClass affectedMethodSet add: method.
				method isPublic
					ifTrue: [ aCIClass publicAffectedMethodSet add: method ] ]
			ifFalse: [ cleanMethods add: method ] ].
	"Loop on fields of the class"
	aCIClass fields do: [ :field |
		((aCIClass affectedFieldSet includes: field) and: [ 
			((self fieldReferenceSetOf: field) intersection: aCIClass affectedFieldSet) isNotEmpty
				or: [ ((self methodReferenceSetOf: field) intersection: aCIClass affectedMethodSet) isNotEmpty ] ]
		)
			ifTrue: [ 
				aCIClass affectedFieldSet add: field.
				field isPublic
					ifTrue: [ aCIClass publicAffectedFieldSet add: field ] ]
			ifFalse: [ cleanFields add: field ] ].
	"Loop on clean methods"
	cleanMethods do: [ :method |
		(((self methodReferenceSetOf: method) intersection: aCIClass affectedMethodSet) isNotEmpty
				or: [ ((self fieldReferenceSetOf: method) intersection: aCIClass affectedFieldSet) isNotEmpty ]
		)
			ifTrue: [ 
				aCIClass affectedMethodSet add: method.
				method isPublic
					ifTrue: [ 
						aCIClass publicAffectedMethodSet add: method ] ] ].
	"Loop on clean fields"
	cleanFields do: [ :field |
		(((self fieldReferenceSetOf: field) intersection: aCIClass affectedFieldSet) isNotEmpty
				or: [ ((self methodReferenceSetOf: field) intersection: aCIClass affectedMethodSet) isNotEmpty ]
		)
			ifTrue: [ 
				aCIClass affectedFieldSet add: field.
				field isPublic
					ifTrue: [ 
						aCIClass publicAffectedFieldSet add: field ] ] ]