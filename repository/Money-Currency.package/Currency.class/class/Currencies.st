as yet unclassified
Currencies
	|tmp|
	tmp := OrderedCollection  new.
	tmp addAll: self CurrenciesAtoF.
	tmp addAll: self CurrenciesGtoM.
	tmp addAll: self CurrenciesNtoS.
	tmp addAll: self CurrenciesTtoZ.
	^tmp.