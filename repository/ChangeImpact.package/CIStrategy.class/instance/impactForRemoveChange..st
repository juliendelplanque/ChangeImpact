impact computation
impactForRemoveChange: aCIRemoveChange
	"Updates #impactedEntities and #nextChangesToProcess inst. vars. in order to compute the impact of aCIRemoveChange
	 according to the current strategy."
	self subclassResponsibility