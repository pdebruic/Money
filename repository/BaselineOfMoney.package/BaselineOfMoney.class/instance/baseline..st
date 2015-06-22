baselines
baseline: spec
	<baseline>
	spec
		for: #common
		do: [ 
			spec description: 'changed repos to smalltalkhub.  Put XMLParser in for XMLSupport'.
			spec
				baseline: 'JSON'
					with: [ 
							spec
								repository: 'gitfiletree:///opt/git/t1';
								loads: #('default') ];
				baseline: 'HTTPAPIClient'
					with: [ 
							spec
								repository: 'gitfiletree:///opt/git/t1';
								loads: #('Core') ].
			spec
				package: 'Money'
				with: [ 
					spec
						requires: #('JSON' 'HTTPAPIClient');
						repository: 'gitfiletree:///opt/git/t1' ].
			spec group: 'Core' with: #('Money') ].
	spec
		for: #squeakCommon
		do: [ 
			spec
				baseline: 'XMLParser'
				with: [ 
					spec
						repository: 'gitfiletree:///opt/git/t1';
						loads: #('Core') ].
			spec
				package: 'Money'
				with: [ 
					spec
						requires: #('XMLParser');
						repository: 'gitfiletree:///opt/git/t1' ] ].
	spec
		for: #gemstone
		do: [ 
			spec
				baseline: 'XMLSupport'
				with: [ 
					spec
						repository: 'gitfiletree:///opt/git/t1';
						loads: #('Core') ].
			spec
				package: 'Money'
				with: [ 
					spec
						requires: #('XMLSupport');
						repository: 'gitfiletree:///opt/git/t1' ] ]