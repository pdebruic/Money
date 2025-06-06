accessing
populateCurrencyList
  | currencyXml |
  Currencies := OrderedCollection new.
  [ 
  currencyXml := XMLDOMParser
    parse: (self httpClient get: self currencyListXmlUrl) contents ]
    on: Error
    do: [ 
      Transcript show: 'no network connection'.
      ^ self ].
  (currencyXml findElementNamed: 'CcyTbl') nodes
    select: [ :ea | ea isStringNode not ]
    thenDo: [ :eachCurrencyXml | 
      | newCurrency nodes |
      nodes := eachCurrencyXml nodes.
      newCurrency := self new.
      self
        storeValueOfElement: 'CtryNm'
        from: nodes
        inInstVar: #'country:'
        of: newCurrency.
      self
        storeValueOfElement: 'CcyNm'
        from: nodes
        inInstVar: #'currencyName:'
        of: newCurrency.
      self
        storeValueOfElement: 'Ccy'
        from: nodes
        inInstVar: #'currency:'
        of: newCurrency.
      self
        storeValueOfElement: 'CcyMnrUnts'
        from: nodes
        inInstVar: #'minorUnit:'
        of: newCurrency.
      self
        storeValueOfElement: 'CcyNbr'
        from: nodes
        inInstVar: #'numericCode:'
        of: newCurrency.
      newCurrency setSymbol.
      Currencies add: newCurrency ]