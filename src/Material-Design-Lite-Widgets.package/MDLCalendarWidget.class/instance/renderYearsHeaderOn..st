private-rendering
renderYearsHeaderOn: html
	self
		renderYearsIntervalButtonWithIcon: 'navigate_before'
		action: #goToPreviousYears
		on: html.
	html
		mdlCellDesktop: 8
		tablet: 6
		phone: 2
		with:
			(String
				streamContents: [ :aStream | 
					aStream
						nextPutAll: self calendar yearsInterval first greaseString;
						nextPutAll: ' - ';
						nextPutAll: self calendar yearsInterval last greaseString ]).
	self
		renderYearsIntervalButtonWithIcon: 'navigate_next'
		action: #goToNextYears
		on: html