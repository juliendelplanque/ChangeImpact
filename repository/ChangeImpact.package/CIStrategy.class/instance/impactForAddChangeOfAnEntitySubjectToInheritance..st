impact computation
impactForAddChangeOfAnEntitySubjectToInheritance: aCIAddChange
	"Updates #impactedEntities and #nextChangesToProcess inst. vars. in order to compute the impact of aCIAddChange
	 holding an entity subject to inheritance according to the current strategy."
	self subclassResponsibility