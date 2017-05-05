impact computation
impactForBodyChange: aCIBodyChange
	"Updates #impactedEntities and #nextChangesToProcess inst. vars. in order to compute the impact of aCIBodyChange
	 according to the current strategy."
	self subclassResponsibility