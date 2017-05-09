printing
printOn: aStream
	aStream
		<< self changeName;
		<< $(.
	self printContentOn: aStream.
	aStream << $)