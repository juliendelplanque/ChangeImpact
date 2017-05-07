baselines
definePackages: spec
	^ spec
		package: 'ChangeImpact';
		package: 'ChangeImpact-Pharo' with: [ spec requires: #('ChangeImpact') ];
		package: 'ChangeImpactBrowser' with: [ spec requires: #('ChangeImpact-Pharo' 'Roassal2') ];
		package: 'ChangeImpact-Nautilus' with: [ spec requires: #('ChangeImpactBrowser') ];
		yourself