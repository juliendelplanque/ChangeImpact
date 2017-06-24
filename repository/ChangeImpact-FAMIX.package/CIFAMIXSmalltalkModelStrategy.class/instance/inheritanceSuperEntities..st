exploring
inheritanceSuperEntities: aFAMIXMethod
	| superEntities container inheritances |
	superEntities := OrderedCollection new.
	container := (self containerEntity: aFAMIXMethod).
	inheritances := self famixModel allInheritanceDefinitions
							select: [ :inh | inh subclass = container ].
	inheritances do: [ :inh |
		inh superclass methods
			detect: [ :m | m signature = aFAMIXMethod signature ]
			ifFound: [ :found | superEntities add: found ] ].
	^ superEntities