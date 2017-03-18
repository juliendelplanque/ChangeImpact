adding
addAffectedMethodSet: aCIMethod
	"Added aCIMethod to #affectedMethodSet if aCIMethod is public, also add it to #publicAffectedMethodSet"
	self affectedMethodSet add: aCIMethod.
	aCIMethod isPublic
		ifTrue: [ self publicAffectedMethodSet add: aCIMethod ]