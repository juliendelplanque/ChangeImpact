accessing
buildPackageMenu: aBuilder
	<nautilusGlobalPackageMenu>
	| package |
	package := aBuilder model selectedPackage package.
	(aBuilder item: #'WhatIf')
		label: 'What if...';
		order: self orderNumber;
		with: [ 
			(aBuilder item: #'Remove')
				label: 'Package selected is removed?';
				action: [ self openOnChange: (CIRemoveChange entity: package) ] ];
		withSeparatorAfter