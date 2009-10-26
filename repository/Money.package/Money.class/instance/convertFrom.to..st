as yet unclassified
convertFrom: aMoney to: aCurrencyCode

|from to rate|
((Currency CurrenciesUpdated + self currencyRefreshPeriod) < DateAndTime now) ifTrue:[Currency new setConvertableCurrenciesAndRates.] 

ifFalse:[
	from := Currency ConvertableCurrencies at: aMoney currency ifAbsent:[0].
	to := Currency ConvertableCurrencies at: aCurrencyCode ifAbsent:[0].
	rate := to/from.

	^Money amount: (rate * aMoney amount) currencyCode: aCurrencyCode ].
