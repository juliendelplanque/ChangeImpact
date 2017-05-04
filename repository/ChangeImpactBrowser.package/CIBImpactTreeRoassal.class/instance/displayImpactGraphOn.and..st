displaying
displayImpactGraphOn: view and: canva
	| builder |
	self impactSet ifNil: [ ^ self ].
	view
		@ RTDraggableView;
		@ RTZoomableView.
	builder := RTMondrian new
					view: view;
					yourself.
	builder shape circle
		size: 10;
		color: (Color veryLightGray alpha: 0.4);
		if: [ :node | node isDirectImpact ] fillColor: Color red.
	builder nodes: self impactSet.
	builder shape arrowedLine withShorterDistanceAttachPoint.
	builder edges
		connectToAll: [ :n | 
			self impactSet select: [ :impact | impact isIndirectImpact and: [ impact responsibleImpact = n ] ] ].
	builder layout radialTree."forceWithCharge: -500."
	builder interaction
		when: TRMouseLeftClick do: [ :event |
			whenSelectedItemChanged value: event element model ].
	builder
		build.
	canva camera translateTo: (view elements detect: [ :e | e model isDirectImpact ]) position.
	lastView := view.
	lastCanva := canva