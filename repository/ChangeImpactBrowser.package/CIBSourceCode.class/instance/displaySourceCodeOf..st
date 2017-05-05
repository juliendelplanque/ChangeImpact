accessing
displaySourceCodeOf: anObject
	anObject cibDisplayInCIBSourceCode: self.
	"anObject canDisplaySourceCode
		ifFalse: [ ^ self ].
	self textModel
		text: anObject cibSourceCode;
		behavior: anObject methodClass"