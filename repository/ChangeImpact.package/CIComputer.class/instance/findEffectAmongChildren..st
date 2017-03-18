computation
findEffectAmongChildren: aClass
	(self classesInheritingFrom: aClass) do: [ :classInheriting |
		classInheriting methods do: [ :method |
			 ] ]