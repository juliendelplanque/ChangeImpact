exploring
referencesToEntity: aFAMIXEntity
	^ self famixModel allReferences
		select: [ :ref | ref to = aFAMIXEntity ]
		thenCollect: #from