computation
totalEffect
	self setInitialization.
	self affectedClassSet do: [ :affectedClass |
		affectedClass isDirty ifTrue: [ 
			affectedClass beClean.
			self
				findEffectInClass: affectedClass;
				findEffectAmongChildren: affectedClass;
				findEffectAmongClient: affectedClass ] ]