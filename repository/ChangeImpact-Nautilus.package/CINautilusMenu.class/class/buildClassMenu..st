accessing
buildClassMenu: aBuilder
	<nautilusGlobalClassFixMenu>
	| selectedClass |
	selectedClass := aBuilder model selectedClass.
	(aBuilder item: #'WhatIf')
		label: 'What if...';
		order: self orderNumber;
		with: [ 
			(aBuilder item: #'Move')
				label: 'Class selected is moved?';
				action: [ self openOnChange: (CIMoveChange entity: selectedClass) ].
			(aBuilder item: #'Remove')
				label: 'Class selected is removed?';
				action: [ self openOnChange: (CIRemoveChange entity: selectedClass) ].
			(aBuilder item: #'Rename')
				label: 'Class selected is renamed?';
				action: [ self openOnChange: (CIRenameChange entity: selectedClass) ] ];
		withSeparatorAfter