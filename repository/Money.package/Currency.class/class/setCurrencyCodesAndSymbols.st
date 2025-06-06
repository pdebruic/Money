updating
setCurrencyCodesAndSymbols
	CurrencyCodesAndSymbols := Dictionary new.
	self currencyCodesAndUnicodeDecimalsSymbols1 , self currencyCodesAndUnicodeDecimalsSymbols2
		do: [ :eachAssoc | 
			| str |
			str := String new: eachAssoc value size.
			eachAssoc value doWithIndex: [ :each :index | str at: index put: each asCharacter ].
			CurrencyCodesAndSymbols at: eachAssoc key put: str ]