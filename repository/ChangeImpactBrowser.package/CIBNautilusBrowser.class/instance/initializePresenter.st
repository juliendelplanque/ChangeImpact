initialization
initializePresenter
	self impactTreeModelLabel
		label: 'EIS Tree:'.
	
	self sourceCodeModelLabel
		label: 'Source code of selected entity:'.
		
	self impactTreeVisualisationLabel
		label: 'EIS tree visualisation:'.
		
	self impactTreeModel
		whenSelectedItemChanged: [ :impact |
			impact ifNotNil: [ 
				self sourceCodeModel displaySourceCodeOf: impact impactedEntity.
				self impactTreeVisualisation focusOn: impact ] ].
		
	self impactTreeVisualisation
		whenSelectedItemChanged: [ :impact | impact inspect ]