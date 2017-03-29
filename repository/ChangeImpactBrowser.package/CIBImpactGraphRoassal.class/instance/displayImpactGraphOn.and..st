displaying
displayImpactGraphOn: view and: canva
	| builder |
	self impactGraph ifNil: [ ^ self ].
	view
		@ RTDraggableView;
		@ RTZoomableView.
	builder := RTMondrian new
					view: view;
					yourself.
	builder shape circle
		size: 10;
		color: (Color veryLightGray alpha: 0.4);
		if: [ :node | node = self impactGraph changedNode ] fillColor: Color red.
	builder nodes: self impactGraph impactedNodes , { self impactGraph changedNode }.
	builder shape arrowedLine withShorterDistanceAttachPoint.
	builder edges
		connectFromAll: [ :n | 
			n incomingEdges
				select: [ :e | e shouldTransmitImpactOfChange: self impactGraph change ]
				thenCollect: [ :e | e from ] ].
	builder layout forceWithCharge: -500.
	builder
		build