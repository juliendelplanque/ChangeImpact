accessing
buildMethodMenu: aBuilder
	<nautilusGlobalMethodMenu>
	| selectedMethod |
	selectedMethod := aBuilder model selectedMethod.
	(aBuilder item: #'WhatIf')
		label: 'What if...';
		with: [ 
			(aBuilder item: #'Add')
				label: 'A method is added?'.
			(aBuilder item: #'Body')
				label: 'Method selected body is modified?'.
			(aBuilder item: #'Move')
				label: 'Method selected is moved?'.
			(aBuilder item: #'Remove')
				label: 'Method selected is removed?';
				action: [ (CIPharoImpactedEntitiesStrategy new impactOfChange: (CIRemoveChange entity: selectedMethod)) inspect ].
			(aBuilder item: #'Rename')
				label: 'Method selected is renamed?';
				action: [ (CIPharoImpactedEntitiesStrategy new impactOfChange: (CIRenameChange entity: selectedMethod)) inspect ] ];
		withSeparatorAfter