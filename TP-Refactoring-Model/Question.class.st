Class {
	#name : #Question,
	#superclass : #Post,
	#instVars : [
		'title',
		'answers',
		'topics'
	],
	#category : #'TP-Refactoring-Model'
}

{ #category : #'instance creation' }
Question class >> newWithTitle: title description: aDescription user: aUser [
	^ self new
		initializeQuestion: title description: aDescription user: aUser;
		yourself
	"^ self new
		title: title;
		description: aDescription;
		user: aUser;
		yourself."
]

{ #category : #'instance creation' }
Question class >> newWithTitle: title description: aDescription user: aUser topic: aTopic [
	^ self new
		initializeQuestion: title description: aDescription user: aUser;
		addTopic: aTopic;
		yourself


	"^ self new
		title: title;
		description: aDescription;
		addTopic: aTopic;
		user: aUser;
		yourself"
]

{ #category : #adding }
Question >> addAnswer: anAnswer [
	answers add: anAnswer.
	anAnswer question: self.
]

{ #category : #adding }
Question >> addTopic: aTopic [
	topics add: aTopic.
	aTopic addQuestion: self.

]

{ #category : #accessing }
Question >> answers [
	^ answers
]

{ #category : #'initalize-release' }
Question >> initialize [
	super initialize.
	answers := OrderedCollection new.
	topics := OrderedCollection new.
	
]

{ #category : #initialization }
Question >> initializeQuestion:aTitle description:aDescription user:aUser [
	title := aTitle.
	description := aDescription.
	user := aUser
]

{ #category : #accessing }
Question >> title [
	^title 
]

{ #category : #accessing }
Question >> title: aTitle [
	title := aTitle 
]

{ #category : #accessing }
Question >> topics [
	^topics 
]
