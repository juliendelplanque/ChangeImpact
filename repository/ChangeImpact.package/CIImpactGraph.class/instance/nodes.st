accessing-computed
nodes
	^ CIBreadthFirstCollector new
			visitCIImpactGraph: self;
			visitedNodes