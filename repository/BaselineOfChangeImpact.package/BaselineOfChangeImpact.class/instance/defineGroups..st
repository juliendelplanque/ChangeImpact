baselines
defineGroups: spec
	^ spec
			group: 'default' with: #('ChangeImpact');
			group: 'pharo' with: #('ChangeImpact-Pharo');
			group: 'nautilus-integration' with: #('ChangeImpactBrowser')
			yourself