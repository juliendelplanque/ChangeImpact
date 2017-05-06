*ChangeImpact-Pharo
ciContainedEntity
	^ self definedClasses , (self definedClasses collect: #classSide) , self extensionMethods