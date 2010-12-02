accessing
exportToSIXXFile

	|file | 
	file := SixxWriteStream newFileNamed: 'currencies.sixx'.
	file nextPutAll: convertableCurrencies .
	file close.
	