specs
defaultSpec
	<spec: #default>
	^ SpecLayout composed
		newColumn: [ :column |
			column
				add: #textModel ];
		yourself