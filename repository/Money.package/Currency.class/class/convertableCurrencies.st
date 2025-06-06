accessing
convertableCurrencies
	 ConvertableCurrencies isNil ifTrue:[self setConvertableCurrenciesAndRates  ].
	^ConvertableCurrencies 