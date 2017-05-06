initialization
initializePresenter
	self treeModel
		roots: #();
		childrenBlock: [ :impact |
			impact inducedImpacts
				sorted: [ :a :b | a impactedEntity name < b impactedEntity name ] ];
		displayBlock: [ :impact | impact impactedEntity name ];
		menu: [ :menuBuilder |
			menuBuilder addGroup: [ :group |
				group addItem: [ :item |
					item 
						name: 'Open In Browser' translated;
						action: [ 
							|selected|
							selected := self treeModel selectedItem content.
							selected impactedEntity isCompiledMethod
								ifTrue: [ Nautilus openOnClass: selected impactedEntity methodClass selector: selected impactedEntity selector ] ].
					item 
						name: 'Inspect' translated;
						action: [ self treeModel selectedItem content inspect ] ] ] ]