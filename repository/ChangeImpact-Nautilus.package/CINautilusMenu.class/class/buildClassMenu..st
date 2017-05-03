accessing
buildClassMenu: aBuilder
	<nautilusGlobalClassFixMenu>
	| class |
	class := aBuilder model selectedClass.
	(aBuilder item: #'WhatIf')
		label: 'What if...';
		with: [ 
			(aBuilder item: #'Add')
				label: 'A class is added?'.
			(aBuilder item: #'Move')
				label: 'Class selected is moved?'.
			(aBuilder item: #'Remove')
				label: 'Class selected is removed?'.
			(aBuilder item: #'Rename')
				label: 'Class selected is removed?' ];
		withSeparatorAfter