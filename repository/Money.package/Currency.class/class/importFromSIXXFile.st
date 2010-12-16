accessing
importFromSIXXFile

	|file | 
	file := SixxReadStream readOnlyFileNamed: FileDirectory default , 'currencies.sixx'.
	convertableCurrencies:= file contents .
	file close.
	