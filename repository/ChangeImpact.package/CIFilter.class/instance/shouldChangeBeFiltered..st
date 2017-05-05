testing
shouldChangeBeFiltered: aCIChange
	"Returns true if the change given as parameter should be filtered from the treatement."
	^ self shouldEntityBeFiltered: aCIChange entity