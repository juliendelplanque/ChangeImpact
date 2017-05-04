focusing
focusOn: anImpact
	lastFocusedNode ifNotNil: [ RTBlink unhighlight: lastFocusedNode ].
	
	lastFocusedNode := lastView elements detect: [ :n | n model = anImpact ].
	CIBCenterAnimation on: lastFocusedNode.
	
	RTBlink highlight: lastFocusedNode color: Color blue