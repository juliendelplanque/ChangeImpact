tests-accessing-computed
testEdges
	self
		assertCollection: impactGraph edges hasSameElements: { edgeN1ToChanged . edgeN2ToChanged . edgeN11ToN1 . edgeN21ToN2 . edgeN22ToN2 }