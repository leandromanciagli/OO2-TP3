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
Post >> description: anObject [
	description := anObject
]

{ #category : #accessing }
Post >> timestamp [
	^ timestamp
]

{ #category : #private }
Post >> timestamp: anObject [
	timestamp := anObject
]

{ #category : #accessing }
Post >> user [
	^ user
]

{ #category : #private }
Post >> user: anObject [
	user := anObject
]

{ #category : #accessing }
Post >> votes [
	^ votes
]
