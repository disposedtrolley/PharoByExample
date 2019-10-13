Class {
	#name : #LOCell,
	#superclass : #SimpleSwitchMorph,
	#instVars : [
		'mouseAction'
	],
	#category : #LightsOut
}

{ #category : #initialization }
LOCell >> initialize [
	super initialize
	label: ''.
	self borderWidth: 2.
	bounds := 0 @ 0 corner: 16 @ 16.
	offColor := Color paleYellow.
	onColor := Color paleBlue darker.
	self useSquareCorners.
	self turnOff.
]

{ #category : #'event handling' }
LOCell >> mouseAction: aBlock [
	mouseAction := aBlock
]

{ #category : #'event handling' }
LOCell >> mouseUp: anEvent [
	mouseAction value
]
