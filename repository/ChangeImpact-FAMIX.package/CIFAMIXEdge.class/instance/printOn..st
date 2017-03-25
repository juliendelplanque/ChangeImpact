printing
printOn: aStream
	super printOn: aStream.
	aStream
		<< $(.
	self relation class printOn: aStream.
	aStream
		<< $)