accessing
buildPackageMenu: aBuilder
	<nautilusGlobalPackageMenu>
	| package |
	package := aBuilder model selectedPackage.
	(aBuilder item: #'WhatIf')
		label: 'What if...';
		order: self orderNumber;
		with: [ 
			(aBuilder item: #'Remove')
				label: 'Package selected is removed?';
				action: [ self openImpactSet: (CIPharoDeveloperStrategy impactOfChange: (CIRemoveChange entity: package)) ] ];
		withSeparatorAfter