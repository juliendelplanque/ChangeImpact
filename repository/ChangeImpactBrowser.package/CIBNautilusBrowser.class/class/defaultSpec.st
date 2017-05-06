specs
defaultSpec
	<spec: #default>
	^ SpecLayout composed
		newColumn: [ :mainColumn | 
			mainColumn
				newRow: [ :row | 
					row
						newColumn: [ :leftColumn | 
							leftColumn
								newRow: #impactTreeModelLabel height: self inputTextHeight;
								add: #impactTreeModel ];
						newColumn: [ :rightColumn | 
							rightColumn
								newRow: #sourceCodeModelLabel height: self inputTextHeight;
								add: #sourceCodeModel ] ];
				addSplitter;
				newRow: #impactTreeVisualisationLabel height: self inputTextHeight;
				newRow: [ :row | row add: #impactTreeVisualisation ] ];
		yourself