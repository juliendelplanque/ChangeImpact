deciding
makeDecisionForInvocationWithEdge: edge change: change
	"By default, an impact is transmitted by a relation of invocation.
	 This may be overrided by subclasses according to the specificities
	 of the software model analysed."
	^ true