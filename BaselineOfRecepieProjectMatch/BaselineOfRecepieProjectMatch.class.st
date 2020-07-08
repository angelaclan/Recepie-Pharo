Class {
	#name : #BaselineOfRecepieProjectMatch,
	#superclass : #BaselineOf,
	#category : #BaselineOfRecepieProjectMatch
}

{ #category : #baselines }
BaselineOfRecepieProjectMatch >> baseline: spec [
	<baseline>
	spec
		baseline: 'Equals'
		with: [ spec repository: 'github://bouraqadi/PharoMisc' ].
	spec for: #common do: [ "Packages"
		spec
			package: 'RecepieProject-Match'
			with: [ spec requires: #( Equals ) ] ]
]

{ #category : #baselines }
BaselineOfRecepieProjectMatch >> loadFromGithub [
	Metacello new
		baseline: 'RecepieProject-Match';
		repository: 'github://angelaclan/Recepie-Pharo';
		load
]

{ #category : #baselines }
BaselineOfRecepieProjectMatch >> projectClass [
	^ MetacelloCypressBaselineProject
]
