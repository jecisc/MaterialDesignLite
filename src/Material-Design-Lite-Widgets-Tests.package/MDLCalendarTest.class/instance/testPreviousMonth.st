tests
testPreviousMonth
	calendar currentDate: (Date year: 2016 month: 4 day: 10).
	calendar previousMonth.
	self assert: calendar currentDate month equals: (Month month: 3 year: 2016).
	self assert: calendar currentDate equals: (Date year: 2016 month: 3 day: 10)