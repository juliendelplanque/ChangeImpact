accessing-computed
edges
	^ CIBreadthFirstCollector new
			visitCIImpactGraph: self;
			visitedEdges