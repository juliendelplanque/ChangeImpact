instance creation
on: el during: seconds
	| initialPosition finalPosition rec |
	canvas := el view canvas.
	initialPosition := canvas camera position.
	
	rec := el encompassingRectangle.
	finalPosition := rec center.
	
	anime := TRVIAnimatedValue new
		evaluator: [ :t | initialPosition interpolateTo: finalPosition at: t ];
		timer: (TRVITimer new cycleLength: seconds);
		yourself.
	