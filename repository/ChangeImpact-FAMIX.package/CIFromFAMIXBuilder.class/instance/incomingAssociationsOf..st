accessing
incomingAssociationsOf: aFAMIXEntity
	^ (self famixModel allWithSubTypesOf: FAMIXAssociation) select: [ :association |
			association to isCollection
				ifTrue: [ association to includes: aFAMIXEntity ]
				ifFalse: [ association to = aFAMIXEntity ] ]