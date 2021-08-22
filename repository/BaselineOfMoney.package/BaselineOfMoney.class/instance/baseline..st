baselines
baseline: spec
<baseline>
	spec
		for: #common
		do: [ spec
				description: 'changed to github'.
			spec
				baseline: 'JSON'
					with: [ spec repository: 'github://pdebruic/JSON:main/repository' ];
				baseline: 'HTTPAPIClient'
					with: [ spec repository: 'github://pdebruic/HTTPAPIClient:main/repository' ];
				package: 'Money'
					with: [ spec requires: #('JSON' 'HTTPAPIClient' 'XMLParser') ].
			spec group: 'Core' with: #('Money') ].
	spec
		for: #squeak
		do: [ spec
				project: 'XMLParser'
				with: [ spec
						className: 'ConfigurationOfXMLParser';
						file: 'ConfigurationOfXMLParser';
						loads: #('Core');
						repository: 'http://www.smalltalkhub.com/mc/PharoExtras/XMLParser/main' ] ].
	spec
		for: #pharo
		do: [ spec
				baseline: 'XMLParser'
				with:
					[ spec repository: 'github://pharo-contributions/XML-XMLParser/src' ] ].
	spec
		for: #gemstone
		do: [ spec
				baseline: 'XMLParser'
				with:
					[ spec repository: 'github://GsDevKit/XML-XMLParser:gemstone/filetree' ] ]