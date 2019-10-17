printing
printSeparated: aNumber on: aStream
	| s n n1 sz decimal separator |
	aNumber < 0
		ifTrue: [ aStream nextPut: $- ].
	decimal := self decimal.
	separator := self separator.
	s := aNumber abs printShowingDecimalPlaces: 2.
	n := s copyUpTo: decimal.
	[ n size > 0 ]
		whileTrue: [ n1 := n copy.
			[ (sz := n1 size) > 3 ] whileTrue: [ n1 := n1 allButLast: 3 ].
			aStream nextPutAll: n1.
			n size > 3
				ifTrue: [ aStream nextPutAll: separator ].
			n := n allButFirst: sz ].
	aStream nextPutAll: (s allButFirst: (s copyUpTo: decimal) size)