helper
openOnChanges: aListOfChanges
	| regex |
	regex := (UIManager default textEntry: '' title: 'Please enter the regex that selects the packages to consider' entryText: ((aListOfChanges collect: [ :c | c entity package name ]) asSet asArray joinUsing: '|')).
	regex ifNil: [ ^ self ]. "If user cancelled the dialog, stop."
	CIBNautilusBrowser new
		impactSet: (CIPharoDeveloperStrategy new
							filter: (CIPackagesFilter new
											packages:(RPackageOrganizer default packages select: [ :p | p name matchesRegex: regex ] thenCollect: #name);
											yourself);
							modelStrategy: CIPharoModelStrategy new;
							impactOfChangeSet: aListOfChanges);
		title: 'Estimated Impact Set browser';
		openWithSpec