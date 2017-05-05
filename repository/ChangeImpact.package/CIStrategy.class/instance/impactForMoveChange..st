impact computation
impactForMoveChange: aCIMoveChange
	"Updates #impactedEntities and #nextChangesToProcess inst. vars. in order to compute the impact of aCIMoveChange
	 according to the current strategy."
	self subclassResponsibility