focusing
focusOn: anImpact
	| viewNode |
	viewNode := lastView elements detect: [ :n | n model = anImpact ].
	CIBCenterAnimation on: viewNode