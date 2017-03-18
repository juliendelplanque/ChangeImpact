computation
setInitialization
	"Initialize ACS"
	self
		affectedClassSet: self changedClasses.
	"Mark each class in the system dirty"
	self classes do: #beDirty.
	"Initialize AMS and AFS for each class of the ACS."
	self affectedClassSet
		do: [ :affectedClass |
			affectedClass
				affectedMethodSet: (self changedMethodsOf: affectedClass);
				affectedFieldSet: (self changedFieldsOf: affectedClass) ]