actions
ok
	self entitySelected
		ifNil: [ UIManager default alert: 'Please, select an entity.' ].
	self performAction: (CIBAnnounceChangeCreatedAction new
									specModel: self;
									change: (self changeSelected new
													entity: self entitySelected;
													yourself);
									yourself)