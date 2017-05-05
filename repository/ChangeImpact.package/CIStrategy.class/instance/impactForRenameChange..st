impact computation
impactForRenameChange: aCIRenameChange
	"Updates #impactedEntities and #nextChangesToProcess inst. vars. in order to compute the impact of aCIRenameChange
	 according to the current strategy."
	self subclassResponsibility