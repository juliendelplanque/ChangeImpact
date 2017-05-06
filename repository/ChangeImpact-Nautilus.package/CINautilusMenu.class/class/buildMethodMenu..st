accessing
buildMethodMenu: aBuilder
	<nautilusGlobalMethodMenu>
	| selectedMethod |
	selectedMethod := aBuilder model selectedMethod.
	(aBuilder item: #'WhatIf')
		label: 'What if...';
		order: self orderNumber;
		with: [ 
			(aBuilder item: #'Add')
				label: 'A method is added?';
				action: [ self openOnChange: (CIAddChange entity: selectedMethod) ].
			(aBuilder item: #'Body')
				label: 'Method selected body is modified?';
				action: [ self openOnChange: (CIBodyChange entity: selectedMethod) ].
			(aBuilder item: #'Move')
				label: 'Method selected is moved?';
				action: [ self openOnChange: (CIMoveChange entity: selectedMethod) ].
			(aBuilder item: #'Remove')
				label: 'Method selected is removed?';
				action: [ self openOnChange: (CIRemoveChange entity: selectedMethod) ].
			(aBuilder item: #'Rename')
				label: 'Method selected is renamed?';
				action: [ self openOnChange: (CIRenameChange entity: selectedMethod) ] ];
		withSeparatorAfter