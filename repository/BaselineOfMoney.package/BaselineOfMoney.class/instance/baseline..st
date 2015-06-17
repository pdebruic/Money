baselines
baseline: spec
	<baseline>

	spec for: #'common' do: [
		spec description: 'changed repos to smalltalkhub.  Put XMLParser in for XMLSupport'.
		spec 
			baseline: 'JSON' with: [
				spec
					loads: #('default' );
					repository: 'http://smalltalkhub.com/mc/PharoExtras/JSON/main' ];
			baseline: 'HTTP-API-Client' with: [
				spec
					loads: #('Core' );
					repository: 'http://smalltalkhub.com/mc/pdebruic/HTTPAPIClient/main' ].
		spec package: 'Money' with: [
				spec requires: #('JSON' 'HTTP-API-Client' ). ].
		spec group: 'Core' with: #('Money' ). ].

	spec for: #'squeakCommon' do: [
		spec baseline: 'XMLParser' with: [
				spec
					loads: #('Core' );
					repository: 'http://www.smalltalkhub.com/mc/PharoExtras/XMLParser/main' ].
		spec package: 'Money' with: [
				spec requires: #('XMLParser' ). ]. ].

	spec for: #'gemstone' do: [
		spec baseline: 'XMLSupport' with: [
				spec
					loads: #('Core' );
					repository: 'http://www.squeaksource.com/MetacelloRepository' ].
		spec package: 'Money' with: [
				spec requires: #('XMLSupport' ). ]. ].
