Class {
	#name : #Post,
	#superclass : #Object,
	#instVars : [
		'timestamp',
		'user',
		'votes',
		'description'
	],
	#category : #'TP-Refactoring-Model'
}

{ #category : #adding }
Post >> addVote: aVote [
	votes add: aVote
]

{ #category : #accessing }
Post >> description [
	^ description
]

{ #category : #private }
Post >> description: aDescription [ 
	description := aDescription
]

{ #category : #initialization }
Post >> initialize [
	votes := OrderedCollection new.
	timestamp := DateAndTime now.
]

{ #category : #accessing }
Post >> timestamp [
	^ timestamp
]

{ #category : #private }
Post >> timestamp: aTimestamp [
	timestamp := aTimestamp
]

{ #category : #accessing }
Post >> user [
	^ user
]

{ #category : #private }
Post >> user: aUser [
	user := aUser
]

{ #category : #accessing }
Post >> votes [
	^ votes
]
