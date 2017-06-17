baselines
definePackages: spec
	^ spec
		package: 'ChangeImpact';
		package: 'ChangeImpact-Pharo' with: [ spec requires: #('ChangeImpact') ];
		package: 'ChangeImpact-Pharo-TestsPackage';
		package: 'ChangeImpact-Pharo-Tests' with: [ spec requires: #('ChangeImpact-Pharo' 'ChangeImpact-Pharo-TestsPackage') ];
		package: 'ChangeImpactBrowser' with: [ spec requires: #('ChangeImpact-Pharo' 'Roassal2') ];
		package: 'ChangeImpact-Nautilus' with: [ spec requires: #('ChangeImpactBrowser') ];
		package: 'ChangeImpact-FAMIX' with: [ spec requires: #('ChangeImpact') ];
		yourself