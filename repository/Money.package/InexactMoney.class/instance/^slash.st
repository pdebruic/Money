arithmetic
/ other
	other isMoney ifTrue: [self error: 'Cannot divide two money values'].
	^ self class amount: (amount asFloat)  / other currency: currency