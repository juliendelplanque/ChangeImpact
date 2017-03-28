visiting
visitCIImpactGraph: aCIImpactGraph
	| nextNodesToProcess |
	nextNodesToProcess := IdentitySet new.
	nextNodesToProcess add: aCIImpactGraph changedNode.
	aCIImpactGraph changedNode acceptVisitor: self.
	[ nextNodesToProcess isNotEmpty ]
		whileTrue: [ |nodesToProcess|
			nodesToProcess := nextNodesToProcess.
			nextNodesToProcess := IdentitySet new.
			nodesToProcess do: [ :node |
				node incomingEdges do: [ :edge |
					edge acceptVisitor: self.
					nextNodesToProcess add: edge from ] ] ]