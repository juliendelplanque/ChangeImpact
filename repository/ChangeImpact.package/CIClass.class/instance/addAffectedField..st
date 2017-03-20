adding
addAffectedField: aCIField
	"Added aCIField to #affectedFieldSet if aCIField is public, also add it to #publicAffectedFieldSet"
	self affectedFieldSet add: aCIField.
	aCIField isPublic
		ifTrue: [ self publicAffectedFieldSet add: aCIField ]