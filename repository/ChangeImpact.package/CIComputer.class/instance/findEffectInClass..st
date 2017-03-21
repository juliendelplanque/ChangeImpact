computation
findEffectInClass: aCIClass
	| cleanMethods cleanFields |
	cleanMethods := OrderedCollection new.
	cleanFields := OrderedCollection new.
	"Loop on methods of the class"
	aCIClass methodsDo: [ :method |
		((aCIClass affectedMethodSet includes: method) not
			and: [ self shouldMethod: method beInAffectedMethodSetOf: aCIClass ])
				ifTrue: [ aCIClass addAffectedMethod: method ]
				ifFalse: [ cleanMethods add: method ] ].
	"Loop on fields of the class"
	aCIClass fieldsDo: [ :field |
		((aCIClass affectedFieldSet includes: field) not
			and: [ self shouldField: field beInAffectedFieldSetOf: aCIClass ])
				ifTrue: [ aCIClass addAffectedField: field ]
				ifFalse: [ cleanFields add: field ] ].
	"Loop on clean methods"
	cleanMethods do: [ :method |
		(self shouldMethod: method beInAffectedMethodSetOf: aCIClass)
			ifTrue: [ aCIClass addAffectedMethod: method ] ].
	"Loop on clean fields"
	cleanFields do: [ :field |
		(self shouldField: field beInAffectedFieldSetOf: aCIClass)
			ifTrue: [ aCIClass addAffectedField: field ] ]