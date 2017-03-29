actions
addChange
	| changeBuilder |
	changeBuilder := self changeBuilderClass new
							model: self model;
							yourself.
	changeBuilder announcer
		when: CIBChangeCreated do: [ :ann |
			changeBuilder announcer unsubscribe: self.
			self
				performAction: (CIBAddChangeAction new
										change: ann change;
										specModel: self;
										yourself);
				performAction: (CIBCloseWidgetAction new
										specModel: changeBuilder;
										yourself) ].
	changeBuilder openWithSpec