computation
findEffectAmongClient: aClass
	(self classesUsing: aClass) do: [ :classUsingAClass |
		|oldAffectedMethodSet oldAffectedFieldSet|
		oldAffectedMethodSet := classUsingAClass affectedMethodSet copy.
		oldAffectedFieldSet := classUsingAClass affectedFieldSet copy.
		"Methods loop"
		classUsingAClass methods do: [ :method |
			(((self methodReferenceSetOf: method) intersection: aClass publicAffectedMethodSet) isNotEmpty
				or: [ ((self fieldReferenceSetOf: method) intersection: aClass publicAffectedFieldSet) isNotEmpty ]
			)
				ifTrue: [ 
					classUsingAClass affectedMethodSet add: method.
					method isPublic
						ifTrue: [ classUsingAClass publicAffectedMethodSet add: method ] ] ].
		"Fields loop"
		classUsingAClass fields do: [ :field |
			(((self fieldReferenceSetOf: field) intersection: classUsingAClass publicAffectedFieldSet) isNotEmpty
				or: [ ((self methodReferenceSetOf: field) intersection: classUsingAClass publicAffectedMethodSet) isNotEmpty ]
			)
				ifTrue: [ 
					classUsingAClass affectedFieldSet add: field.
					field isPublic
						ifTrue: [ classUsingAClass publicAffectedFieldSet add: field ] ] ].
		"Find effect in the class using aClass"
		self findEffectInClass: classUsingAClass.
		"Compare AMS and AFS changes"
		(oldAffectedMethodSet ~= classUsingAClass affectedMethodSet
			or: [ oldAffectedFieldSet ~= classUsingAClass affectedFieldSet ])
				ifTrue: [ 
					self affectedClassSet add: classUsingAClass.
					classUsingAClass beDirty ] ]