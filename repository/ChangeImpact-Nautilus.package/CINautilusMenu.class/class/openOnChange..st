helper
openOnChange: aChange
	| regex |
	regex := (UIManager default textEntry: '' title: 'Please enter the regex that selects the packages to consider' entryText: '.*').
	CIBNautilusBrowser new
		impactSet: (CIPharoDeveloperStrategy new
							filter: (CIPackagesFilter new
											packages:(RPackageOrganizer default packages select: [ :p | p name matchesRegex: regex ] thenCollect: #name);
											yourself);
							impactOfChange: aChange);
		title: 'Estimated Impact Set browser';
		openWithSpec