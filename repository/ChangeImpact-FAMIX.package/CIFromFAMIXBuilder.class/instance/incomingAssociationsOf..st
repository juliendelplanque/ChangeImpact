accessing
incomingAssociationsOf: aFAMIXEntity
	^ (self famixModel allWithSubTypesOf: FAMIXAssociation) select: [ :association |
			(self associationTypes anySatisfy: [ :assocClass | association isKindOf: assocClass ])
				ifTrue: [ 
					association to isCollection
						ifTrue: [ association to includes: aFAMIXEntity ]
						ifFalse: [ association to = aFAMIXEntity ] ] ]