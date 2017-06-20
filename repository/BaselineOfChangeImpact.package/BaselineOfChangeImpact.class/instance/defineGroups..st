baselines
defineGroups: spec
	^ spec
			group: 'core' with: #('ChangeImpact');
			group: 'pharo' with: #('ChangeImpact-Pharo' 'ChangeImpact-Pharo-Tests');
			group: 'nautilus-integration' with: #('ChangeImpactBrowser');
			group: 'famix' with: #('ChangeImpact-FAMIX');
			group: 'default' with: #('core');
			yourself