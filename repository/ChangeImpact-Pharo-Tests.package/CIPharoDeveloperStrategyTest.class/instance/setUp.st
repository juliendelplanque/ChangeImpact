initialization
setUp
	strategy := CIPharoDeveloperStrategy new
						filter: (CIPackagesFilter new
										packages: #('ChangeImpact-Pharo-TestsPackage');
										yourself);
						modelStrategy: CIPharoModelStrategy new;
						yourself