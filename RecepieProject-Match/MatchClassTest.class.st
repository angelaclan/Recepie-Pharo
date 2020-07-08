Class {
	#name : #MatchClassTest,
	#superclass : #TestCase,
	#instVars : [
		'fishSoup',
		'carrot',
		'paprika',
		'garlic',
		'fish'
	],
	#category : #'RecepieProject-Match'
}

{ #category : #running }
MatchClassTest >> setUp [
	|  carrot paprika garlic fish |
	super setUp.
	fishSoup := Recepie new.
	carrot := Ingredient new name: 'carrot'.
	paprika  := Ingredient new name: 'paprika'.
	garlic  := Ingredient new name: 'garlic'.
	fish  := Ingredient new name: 'fish'.
	fishSoup 	ingredients: {carrot. paprika. garlic. fish}
	
]

{ #category : #tests }
MatchClassTest >> test4InputIngredientGive100PercentMatch [
  	carrot := Ingredient carrot.
	paprika := Ingredient paprika.
	garlic := Ingredient garlic.
	fish := Ingredient fish.	
	self assert: (fishSoup matches: {carrot. paprika. garlic. fish}) equals: 100
	
]

{ #category : #tests }
MatchClassTest >> testFishSoupHas4Ingredients [

	self assert: fishSoup ingredients size equals: 4
	
]

{ #category : #tests }
MatchClassTest >> testOneInputIngredientGive100PercentMatch [

	carrot := Ingredient carrot.
	
	
	self assert: (fishSoup matches: { carrot }) equals: 25
	
]

{ #category : #tests }
MatchClassTest >> testOneInputIngredientGive25PercentMatch [
	fish := Ingredient fish.
	self assert: (fishSoup matches: {fish}) equals: 25
	
]
