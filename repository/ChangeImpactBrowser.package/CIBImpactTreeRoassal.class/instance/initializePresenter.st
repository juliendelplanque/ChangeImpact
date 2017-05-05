initialization
initializePresenter
	roassal
		script: [ :view :canva | self displayImpactGraphOn: view and: canva ].
	
	self layoutDropList
		items: #(radialTree tree circle cell force grid);
		whenSelectedItemChanged: [ :item |
			self layout: item.
			self roassal refresh ].
	
	self circleSizeInput
		text: self circleSize;
		whenTextIsAccepted: [ :text | |size|
			size := text asInteger.
			size
				ifNil: [ 
					self circleSizeInput text: self circleSize.
					UIManager default inform: 'The circle size must be an integer.' ]
				ifNotNil: [ 
					self circleSize: size.
					self roassal refresh. ] ]