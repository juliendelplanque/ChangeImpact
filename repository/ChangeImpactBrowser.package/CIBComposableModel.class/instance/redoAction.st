actions
redoAction
	"Undo the last action if the stack of cancelled actions is not empty.
	 If the stack is empty, does nothing."
	cancelledActionsStack
		ifEmpty: [ ^ self ].
	
	action := cancelledActionsStack pop.
	action performAction.
	performedActionsStack push: action