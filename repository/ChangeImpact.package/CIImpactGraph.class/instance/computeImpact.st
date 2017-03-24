computing
computeImpact
	| nextNodesToProcess |
	self impactedNodes: OrderedCollection new.
	nextNodesToProcess := OrderedCollection new.
	nextNodesToProcess add: self changedNode.
	[ nextNodesToProcess isNotEmpty ]
		whileTrue: [ |nodesToProcess|
			nodesToProcess := nextNodesToProcess.
			nextNodesToProcess := OrderedCollection new.
			nodesToProcess do: [ :node |
				node incomingEdges do: [ :edge |
					(edge shouldTransmitImpactOfChange: self change)
						ifTrue: [ 
							edge from isImpacted: true.
							self impactedNodes add: edge from.
							nextNodesToProcess add: edge from ] ] ] ]