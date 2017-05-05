specs
defaultSpec
	<spec: #default>
	^ SpecLayout composed
		newColumn: [ :column |
			column
				add: #roassal;
				newRow: [ :row | 
					row
						add: #layoutDropList;
						add: #circleSizeInput ] height: self buttonHeight ];
		yourself