initialization
initializePresenter
	super initializePresenter.
	changeDropList
		items: CIChange subclasses;
		displayBlock: [ :c | c cibString ];
		setSelectedIndex: 1.
	
	dropListLabel
		label: 'Change type:'.
		
	okButton
		label: 'Ok';
		action: [ self ok ].
		
	cancelButton
		label: 'Cancel';
		action: [ self cancel ].
	
	modelBrowserLabel
		label: 'Entity concerned:'.
	
	self initializeModelBrowserPresenter