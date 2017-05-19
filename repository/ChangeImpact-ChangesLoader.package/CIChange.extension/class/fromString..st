*ChangeImpact-ChangesLoader
fromString: aString
	
	| splitted entity|
	splitted := (aString splitOn: '::') second splitOn: $..
	splitted size >= 1 ifTrue: [ entity := splitted first asClass ].
	splitted size >= 2 ifTrue: [ 
		entity := (splitted second includes: $()
			ifTrue: [ "method"
				entity >> (splitted second splitOn: $() first asSymbol ]
			ifFalse: [ "inst var"
				entity slotNamed: (splitted second asSymbol) ] ].
	^ self entity: entity