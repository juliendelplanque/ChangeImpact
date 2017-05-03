accessing
buildClassMenu: aBuilder
	<nautilusGlobalClassFixMenu>
	| selectedClass |
	selectedClass := aBuilder model selectedClass.
	(aBuilder item: #'WhatIf')
		label: 'What if...';
		with: [ 
			(aBuilder item: #'Add')
				label: 'A class is added?'.
			(aBuilder item: #'Move')
				label: 'Class selected is moved?'.
			(aBuilder item: #'Remove')
				label: 'Class selected is removed?';
				action: [ (CIPharoImpactedEntitiesStrategy new impactOfChange: (CIRemoveChange entity: selectedClass)) inspect ].
			(aBuilder item: #'Rename')
				label: 'Class selected is renamed?';
				action: [(CIPharoImpactedEntitiesStrategy new impactOfChange: (CIRenameChange entity: selectedClass)) inspect ] ];
		withSeparatorAfter