instance creation
fields: aCollectionOfFields methods: aCollectionOfMethods
	"Creates a new instance with the fields and methods given as parameters of this method."
	^ self new
		fields: aCollectionOfFields;
		methods: aCollectionOfMethods;
		yourself