impact computation
impactForAddChange: aCIAddChange
	"Updates #impactedEntities and #nextChangesToProcess inst. vars. in order to compute the impact of aCIAddChange
	 according to the current strategy."
	self subclassResponsibility