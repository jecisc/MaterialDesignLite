tests
testSelectMatchingFromFormatWith
	self
		assertCollection:
			(self actualClass
				selectMatchingFrom: #('test' 'anotherTest' 'Test' 'AnotherTest' 'anotherTest2' 'anothertest2')
				format: [ :each | (each copyReplaceAll: 'test' with: 'atest') copyReplaceAll: 'Test' with: 'aTest' ]
				with: 'atest')
		hasSameElements: #('test' 'anothertest2')