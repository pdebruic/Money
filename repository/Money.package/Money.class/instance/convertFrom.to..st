as yet unclassified
convertFrom: aMoney to: aCurrencyCode

|from to rate|
((Currency CurrenciesUpdated + self currencyRefreshPeriod) < DateAndTime now) ifTrue:[Currency new setConvertableCurrenciesAndRates.] 

ifFalse:[
	from := Currency ConvertableCurrencies at: aMoney currency ifAbsent:[nil].
	to := Currency ConvertableCurrencies at: aCurrencyCode ifAbsent:[nil].

	from isNil ifTrue: [^aMoney].
	to isNil ifTrue: [^aMoney].	
		
	rate := to/from.

	^Money amount: (rate * aMoney amount) currencyCode: aCurrencyCode ].
