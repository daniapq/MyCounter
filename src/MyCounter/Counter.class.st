"
My counter class
"
Class {
	#name : #Counter,
	#superclass : #Object,
	#instVars : [
		'count'
	],
	#category : #'MyCounter-Core'
}

{ #category : #accessing }
Counter >> count [
	
	^ count
]

{ #category : #accessing }
Counter >> count: anInteger [
	
	count := anInteger
]

{ #category : #action }
Counter >> decrement [
	
	count := count - 1
]

{ #category : #action }
Counter >> increment [
	
	count := count + 1
]

{ #category : #initialization }
Counter >> initialize [
	
	count := 0
]
