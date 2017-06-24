baselines
defineGroups: spec
	^ spec
			group: 'core' with: #('ChangeImpact');
			group: 'pharo' with: #('ChangeImpact-Pharo' 'ChangeImpact-Pharo-Tests');
			group: 'gui' with: #('core' 'ChangeImpactBrowser');
			group: 'nautilus-integration' with: #('gui' 'ChangeImpact-Nautilus');
			group: 'famix' with: #('ChangeImpact-FAMIX');
			group: 'default' with: #('core');
			yourself