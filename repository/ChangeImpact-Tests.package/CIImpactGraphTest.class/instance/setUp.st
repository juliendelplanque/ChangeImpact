running
setUp
	changed := CINode new.
	n1 := CINode new.
	n11 := CINode new.
	n2 := CINode new.
	n21 := CINode new.
	n22 := CINode new.
	edgeN1ToChanged := CIEdge new
								from: n1;
								to: changed;
								yourself.
	edgeN2ToChanged := CIEdge new
								from: n2;
								to: changed;
								impactTransmissionDecisionMaker: [ :edge :change | false ] asImpactTransmissionDecisionMaker;
								yourself.
	changed
		incomingEdges: {edgeN1ToChanged.edgeN2ToChanged}.
	edgeN11ToN1 := CIEdge new
							from: n11;
							to: n1;
							yourself.
	n1
		incomingEdges: {edgeN11ToN1}.
	edgeN21ToN2 := CIEdge new
							from: n21;
							to: n2;
							yourself.
	edgeN22ToN2 := CIEdge new
							from: n22;
							to: n2;
							yourself.
	n2
		incomingEdges: {edgeN21ToN2.edgeN22ToN2}.
	impactGraph := CIImpactGraph new
		change: (CIAddChange entity: changed);
		changedNode: changed;
		yourself