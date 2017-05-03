initialization
initializePresenter
	self treeModel
		roots: #();
		childrenBlock: [ :impact | impactSet select: [ :childImp | childImp isIndirectImpact and: [ childImp responsibleImpact = impact ] ] ]