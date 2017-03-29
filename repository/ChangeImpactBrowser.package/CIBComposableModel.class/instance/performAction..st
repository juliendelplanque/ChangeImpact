actions
performAction: aCIBAction
	self resetCancelledActionsStack. "When you perform a new action, you can not redo actions you cancelled anymore."
	aCIBAction performAction.
	aCIBAction isCancellable
		ifTrue: [ performedActionsStack push: aCIBAction ]