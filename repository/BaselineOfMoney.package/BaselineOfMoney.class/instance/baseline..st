baselines
baseline: spec
	<baseline>

	spec for: #'common' do: [
		spec description: 'changed repos to smalltalkhub.  Put XMLParser in for XMLSupport'.
		spec 
			baseline: 'JSON' with: [
				spec repository: 'filetree:///opt/git/t6/JSON'; loads: #('default' ) ];
			baseline: 'HTTPAPIClient' with: [
				spec repository: 'filetree:///opt/git/t6/HTTP-API-Client'; loads: #('Core' ) ].
		spec package: 'Money' with: [
				spec requires: #('JSON' 'HTTPAPIClient' ). ].
		spec group: 'Core' with: #('Money' ). ].

	spec for: #'squeakCommon' do: [
		spec baseline: 'XMLParser' with: [
				spec repository: 'filetree:///opt/git/t6/XMLParser'; loads: #('Core' ) ].
		spec package: 'Money' with: [
				spec requires: #('XMLParser' ). ]. ].

	spec for: #'gemstone' do: [
		spec baseline: 'XMLSupport' with: [
				spec repository: 'filetree:///opt/git/t6/XMLSupport'; loads: #('Core' ) ].
		spec package: 'Money' with: [
				spec requires: #('XMLSupport' ). ]. ].
