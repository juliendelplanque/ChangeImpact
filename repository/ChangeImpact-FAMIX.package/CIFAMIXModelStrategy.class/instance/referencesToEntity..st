exploring
referencesToEntity: aFAMIXEntity
	^ ((self famixModel allReferences
		select: [ :ref | ref to = aFAMIXEntity ]
		thenCollect: #from) ,
	  (self famixModel allInheritanceDefinitions
		select: [ :ref | ref superclass = aFAMIXEntity ]
		thenCollect: #subclass)) entities