exploring
inheritanceSubEntities: aFAMIXMethod
	| subEntities container inheritances |
	subEntities := OrderedCollection new.
	container := (self containerEntity: aFAMIXMethod).
	inheritances := self famixModel allInheritanceDefinitions
							select: [ :inh | inh superclass = container ].
	inheritances do: [ :inh |
		inh subclass methods
			detect: [ :m | m signature = aFAMIXMethod signature ]
			ifFound: [ :found | subEntities add: found ] ].
	^ subEntities