loading
loadChanges
	| changeStringToClass changes |
	changeStringToClass := { 
		'add' -> CIAddChange .
		'rem' -> CIRemoveChange.
		'mov' -> CIMoveChange.
		'ren' -> CIRenameChange.
		'body' -> CIBodyChange } asDictionary.
	changes := OrderedCollection new.
	self fileLinesDo: [ :line | |splitted|
		splitted := line splitOn: Character space.
		changes add: ((changeStringToClass at: splitted first) fromString: splitted second) ].
	^ changes