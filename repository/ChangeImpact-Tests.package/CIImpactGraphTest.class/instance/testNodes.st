tests-accessing-computed
testNodes
	self
		assertCollection: impactGraph nodes hasSameElements: { changed . n1 . n11 . n2 . n21 . n22 }