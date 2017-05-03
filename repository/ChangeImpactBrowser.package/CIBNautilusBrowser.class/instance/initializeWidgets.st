initialization
initializeWidgets
	impactTreeModelLabel := self newLabel.
	impactTreeModel := CIBImpactTree new.
	sourceCodeModelLabel := self newLabel.
	sourceCodeModel := CIBSourceCode new.
	impactTreeVisualisationLabel := self newLabel.
	impactTreeVisualisation := CIBImpactTreeRoassal new