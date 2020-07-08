Class {
	#name : #Recepie,
	#superclass : #Object,
	#instVars : [
		'ingredients',
		'ingredient'
	],
	#category : #'RecepieProject-Match'
}

{ #category : #testing }
Recepie >> fullMatch: newSet [
	^ newSet size / (self ingredients size) == 1
]

{ #category : #accessing }
Recepie >> ingredient [
	^ ingredient
]

{ #category : #'as yet unclassified' }
Recepie >> ingredient: anObject [
	ingredient := anObject 
]

{ #category : #accessing }
Recepie >> ingredients [
	^ ingredients
]

{ #category : #'as yet unclassified' }
Recepie >> ingredients: aCollection [ 
	ingredients := aCollection
]

{ #category : #testing }
Recepie >> matches: aCollection [
	| newSet |
	newSet := self ingredients asSet intersection: aCollection asSet.
	
		^(newSet size / (self ingredients size) )*100
	
]
