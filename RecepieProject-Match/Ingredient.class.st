Class {
	#name : #Ingredient,
	#superclass : #Object,
	#instVars : [
		'name'
	],
	#classVars : [
		'Carrot',
		'Fish',
		'Garlic',
		'Paprika'
	],
	#category : #'RecepieProject-Match'
}

{ #category : #'as yet unclassified' }
Ingredient class >> carrot [
	^ Carrot ifNil: [ Carrot := self new ]
]

{ #category : #'as yet unclassified' }
Ingredient class >> fish [
	^ Fish ifNil: [ Fish := self new ]
]

{ #category : #'as yet unclassified' }
Ingredient class >> garlic [
	^ Garlic ifNil: [ Garlic := self new ]
]

{ #category : #'as yet unclassified' }
Ingredient class >> paprika [
	^ Paprika ifNil: [ Paprika := self new ]
]

{ #category : #accessing }
Ingredient >> name [ 
	^ name
]

{ #category : #accessing }
Ingredient >> name: aName [
	name := aName
]
