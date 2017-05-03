*ChangeImpact-Pharo
ciAllReferencesFrom: aClass
	^ SystemNavigation default 
			allAccessesTo: self name from: aClass.