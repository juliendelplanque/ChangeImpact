specs
defaultSpec
	<spec: #default>
	^ SpecLayout composed
		newColumn: [ :column |
			column
				add: #roassal ];
		yourself