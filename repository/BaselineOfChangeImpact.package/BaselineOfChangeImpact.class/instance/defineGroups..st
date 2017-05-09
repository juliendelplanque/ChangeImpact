baselines
defineGroups: spec
	^ spec
			group: 'core' with: #('ChangeImpact');
			group: 'pharo' with: #('ChangeImpact-Pharo');
			group: 'pharo-tests' with: #('ChangeImpact-Pharo-Tests');
			group: 'nautilus-integration' with: #('ChangeImpactBrowser')
			yourself