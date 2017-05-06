accessing
buildClassMenu: aBuilder
	<nautilusGlobalClassFixMenu>
	| selected otherSide |
	selected := aBuilder model selectedClass.
	otherSide := selected isClass
						ifTrue: [ selected classSide ]
						ifFalse: [ selected baseClass ].
	(aBuilder item: #'WhatIf')
		label: 'What if...';
		order: self orderNumber;
		with: [ 
			(aBuilder item: #'Move')
				label: 'Class selected is moved?';
				action: [ self openOnChanges: {CIMoveChange entity: selected . CIMoveChange entity: otherSide } ].
			(aBuilder item: #'Remove')
				label: 'Class selected is removed?';
				action: [ self openOnChanges: {CIRemoveChange entity: selected . CIRemoveChange entity: otherSide } ].
			(aBuilder item: #'Rename')
				label: 'Class selected is renamed?';
				action: [ self openOnChanges: {CIRenameChange entity: selected . CIRenameChange entity: otherSide } ] ];
		withSeparatorAfter