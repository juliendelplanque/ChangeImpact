printing
printContentOn: aStream
	self baseEntity printOn: aStream.
	aStream << '->'.
	self targetEntity printOn: aStream