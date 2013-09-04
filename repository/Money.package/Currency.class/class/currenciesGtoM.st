currencies
currenciesGtoM
	| tmp |
	tmp := OrderedCollection new.
	tmp
		add:
			(self new
				country: 'Gabon';
				currencyName: 'Central African CFA franc';
				symbol: 'Fr';
				currency: 'XAF').
	tmp
		add:
			(self new
				country: 'Gambia, The';
				currencyName: 'Gambian dalasi';
				symbol: 'D';
				currency: 'GMD').
	tmp
		add:
			(self new
				country: 'Georgia';
				currencyName: 'Georgian lari';
				symbol: '