exploring
referencesToEntity: aFAMIXEntity
	^ ((self famixModel allReferences
			select: [ :ref | ref to = aFAMIXEntity ]
			thenCollect: #from) ,
		(self famixModel allInvocations
			select: [ :ref | ref to = aFAMIXEntity ]
			thenCollect: #from) ,
		(self famixModel allInheritanceDefinitions
			select: [ :ref | ref superclass = aFAMIXEntity ]
			thenCollect: #from) ,
		(self famixModel allAccesses
			select: [ :ref | ref to = aFAMIXEntity ]
			thenCollect: #from) ,
		((self famixModel allWithType: FAMIXInclude)
			select: [ :ref | ref target = aFAMIXEntity ]
			thenCollect: #from)) asSet