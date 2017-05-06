helper
openOnChanges: aListOfChanges
	| regex |
	regex := (UIManager default textEntry: '' title: 'Please enter the regex that selects the packages to consider' entryText: '.*').
	CIBNautilusBrowser new
		impactSet: (CIPharoDeveloperStrategy new
							filter: (CIPackagesFilter new
											packages:(RPackageOrganizer default packages select: [ :p | p name matchesRegex: regex ] thenCollect: #name);
											yourself);
							impactOfChangeSet: aListOfChanges);
		title: 'Estimated Impact Set browser';
		openWithSpec