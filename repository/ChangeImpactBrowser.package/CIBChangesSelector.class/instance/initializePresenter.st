initialization
initializePresenter
	super initializePresenter.
	self changeList
		icons: [ :change | change cibIcon ];
		beSingleSelection.
	
	self addChangeButton
		label: 'Add a change';
		action: [ self addChange ].
	self removeChangeButton
		label: 'Remove a change';
		action: [ self removeChange ].
	self clearChangeListButton
		label: 'Clear changes';
		action: [ self clearChanges ].
	self acceptChangeListButton
		label: 'Accept changes';
		action: [ self acceptChanges ]