testing
shouldEntityBeFiltered: anEntity
	^ (self packages includes: anEntity ciPackage name) not