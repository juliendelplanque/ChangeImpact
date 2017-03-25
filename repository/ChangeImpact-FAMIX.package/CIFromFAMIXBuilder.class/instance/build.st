building
build
	| initialNode nodeToAssocs |
	initialNode := CIFAMIXNode new
							entity: self changedEntity;
							yourself.
	nodeToAssocs := { initialNode -> (self incomingAssociationsOf: self changedEntity) } asDictionary.
	[ nodeToAssocs isNotEmpty ]
		whileTrue: [ |currentNodeToAssocs|
			currentNodeToAssocs := nodeToAssocs copy.
			nodeToAssocs := Dictionary new.
			currentNodeToAssocs keysAndValuesDo: [ :node :associations |
				node incomingEdges: (associations select: [ :assoc | assoc from privateState propertyAt: #ciShouldBeVisited ifAbsent: [ true ] ] thenCollect: [ :assoc |
											assoc from privateState propertyAt: #ciShouldBeVisited put: false.
											CIFAMIXEdge new
												from: (CIFAMIXNode new entity: assoc from; yourself);
												to: node;
												relation: assoc;
												yourself ]).
				node incomingEdges do: [ :edge |
					nodeToAssocs
						at: edge from put: (self incomingAssociationsOf: edge from entity)  ] ] ].
	^ CIImpactGraph new
		changedNode: initialNode;
		yourself