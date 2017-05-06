specs
defaultSpec
	<spec: #default>
	^ SpecLayout composed
		newColumn: [ :column |
			column
				add: #roassal;
				newRow: [ :row | 
					row
						add: #layoutDropListLabel;
						add: #layoutDropList;
						add: #circleSizeInputLabel;
						add: #circleSizeInput ] height: self buttonHeight ];
		yourself