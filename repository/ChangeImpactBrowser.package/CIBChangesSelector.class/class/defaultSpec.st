specs
defaultSpec
	<spec: #default>
	^ SpecLayout composed
		newColumn: [ :column | 
			column
				newRow: [ :row | 
					row
						add: #undoButton;
						add: #redoButton ]
					height: self buttonHeight;
				add: #changeList;
				add: #addChangeButton height: self buttonHeight;
				add: #removeChangeButton height: self buttonHeight;
				add: #clearChangeListButton height: self buttonHeight;
				add: #acceptChangeListButton height: self buttonHeight ];
		yourself