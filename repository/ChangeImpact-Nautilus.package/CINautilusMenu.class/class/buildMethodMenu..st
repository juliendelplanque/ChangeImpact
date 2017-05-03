accessing
buildMethodMenu: aBuilder
	<nautilusGlobalMethodMenu>
	| selectedMethod |
	selectedMethod := aBuilder model selectedMethod.
	(aBuilder item: #'WhatIf')
		label: 'What if...';
		with: [ 
			(aBuilder item: #'Add')
				label: 'A method is added?';
				action: [ self openImpactSet: (CIPharoImpactedEntitiesStrategy new impactOfChange: (CIAddChange entity: selectedMethod)) ].
			(aBuilder item: #'Body')
				label: 'Method selected body is modified?';
				action: [ self openImpactSet: (CIPharoImpactedEntitiesStrategy new impactOfChange: (CIBodyChange entity: selectedMethod)) ].
			(aBuilder item: #'Move')
				label: 'Method selected is moved?';
				action: [ self openImpactSet: (CIPharoImpactedEntitiesStrategy new impactOfChange: (CIMoveChange entity: selectedMethod)) ].
			(aBuilder item: #'Remove')
				label: 'Method selected is removed?';
				action: [ self openImpactSet: (CIPharoImpactedEntitiesStrategy new impactOfChange: (CIRemoveChange entity: selectedMethod)) ].
			(aBuilder item: #'Rename')
				label: 'Method selected is renamed?';
				action: [ self openImpactSet: (CIPharoImpactedEntitiesStrategy new impactOfChange: (CIRenameChange entity: selectedMethod)) ] ];
		withSeparatorAfter