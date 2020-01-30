"
Counter test
"
Class {
	#name : #CounterTest,
	#superclass : #TestCase,
	#instVars : [
		'counter'
	],
	#category : #'MyCounter-Tests'
}

{ #category : #running }
CounterTest >> setUp [
	
	super setUp.
	counter := Counter new
]

{ #category : #running }
CounterTest >> tearDown [
	
	counter := nil.
	super tearDown
]

{ #category : #tests }
CounterTest >> testDecrementCurrentValue [
	
	counter count: 3; decrement; decrement.
	self assert: counter count equals: 1
]

{ #category : #tests }
CounterTest >> testDefaultValue [
	
	self assert: counter count equals: 0
]

{ #category : #tests }
CounterTest >> testGetValue [
	
	counter count: 1.
	self assert: counter count equals: 1
]

{ #category : #tests }
CounterTest >> testIncrementCurrentValue [
	
	counter increment; increment.
	self assert: counter count equals: 2
]

{ #category : #tests }
CounterTest >> testSetValue [
	
	counter count: 1; count: 5.
	self assert: counter count equals: 5
]
