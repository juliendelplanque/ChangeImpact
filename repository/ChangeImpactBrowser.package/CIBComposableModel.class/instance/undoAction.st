actions
undoAction
	"Undo the last action if the stack of performed actions is not empty.
	 If the stack is empty, does nothing."
	performedActionsStack
		ifEmpty: [ ^ self ].
	
	action := performedActionsStack pop.
	action cancelAction.
	cancelledActionsStack push: action