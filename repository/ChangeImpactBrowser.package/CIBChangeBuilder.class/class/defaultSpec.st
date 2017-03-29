specs
defaultSpec
	<spec: #default>
	^ SpecLayout composed
		newColumn: [ :column |
			column
				add: #dropListLabel height: self buttonHeight;
				add: #changeDropList height: self buttonHeight;
				add: #modelBrowserLabel height: self buttonHeight;
				add: #modelBrowser;
				newRow: [ :row |
					row
						add: #cancelButton;
						add: #okButton ] height: self buttonHeight ];
		yourself