updating
setConvertableCurrenciesAndRates
	| rates  |
	rates := (Json readFrom: (self httpClient get: self latestUrl) contents readStream) at: 'rates'.
	self currencies do: [ :each | each conversionRateToUSD: (rates at: each currency ifAbsentPut: [ 0 ]) ].
	ConvertableCurrencies:= (Currencies select: [ :each | each isConvertable ]) asSet asSortedCollection.
	CurrenciesUpdated:= DateAndTime now