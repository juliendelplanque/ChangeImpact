accessing
buildPackageMenu: aBuilder
	<nautilusGlobalPackageMenu>
	| package |
	package := aBuilder model selectedPackage.
	(aBuilder item: #'WhatIf')
		label: 'What if...';
		with: [ 
			(aBuilder item: #'Remove')
				label: 'Package selected is removed?' ];
		withSeparatorAfter