initialization
initializePresenter
	self treeModel
		roots: #();
		childrenBlock: [ :impact | 
			"(impactSet select: [ :childImp | childImp isIndirectImpact and: [ childImp responsibleImpact = impact ] ])"
			impact inducedImpacts
				sorted: [ :a :b | a impactedEntity name < b impactedEntity name ] ];
		displayBlock: [ :impact | impact impactedEntity name ]