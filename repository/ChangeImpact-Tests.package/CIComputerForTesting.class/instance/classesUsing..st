sets computing
classesUsing: aClass
	^ self classes select: [ :c |
			c ~= aClass and: [ 
				c methods anySatisfy: [ :m | m methodReferences includesAnyOf: aClass methods ] ] ]