initialization
initializePresenter
	undoButton
		label: 'Undo';
		action: [ self undoAction ].
	
	redoButton
		label: 'Redo';
		action: [ self redoAction ]