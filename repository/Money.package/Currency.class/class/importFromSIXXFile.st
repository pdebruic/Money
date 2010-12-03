accessing
importFromSIXXFile

	|file | 
	file := SixxReadStream readOnlyFileNamed: 'currencies.sixx'.
	convertableCurrencies:= file contents .
	file close.
	