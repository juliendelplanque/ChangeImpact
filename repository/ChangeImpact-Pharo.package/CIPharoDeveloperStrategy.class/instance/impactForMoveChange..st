impact computation
impactForMoveChange: aMoveChange
	"Manage when a change is moved in inheritance chain."
	| baseContainer targetContainer |
	baseContainer := self containerEntity: aMoveChange baseEntity.
	targetContainer := self containerEntity: aMoveChange targetEntity.

	(baseContainer allSuperclasses includes: targetContainer)
		ifTrue: [ 
			self impactForMoveChangeInSuperclasses: aMoveChange.
			^ self ].
		
	"If the entity has been moved in a subclass or in another class
	 that is not in the inheritance chain, the impact is the same
	 and is defined in super method."
	super impactForMoveChange: aMoveChange.