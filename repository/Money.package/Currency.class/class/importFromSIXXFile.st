accessing
importFromSIXXFile

	|file | 
	file := SixxReadStream readOnlyFileNamed: 'currencies.sixx'.
	convertableCurrencies:= file contents .
	self halt.
	file close.
	