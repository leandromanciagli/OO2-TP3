Class {
	#name : #QuestionRetriever,
	#superclass : #Object,
	#instVars : [
		'cuoora'
	],
	#category : #'TP-Refactoring-Model'
}

{ #category : #'instance creation' }
QuestionRetriever class >> new: cuoora [
	^ self new cuoora: cuoora
]

{ #category : #'instance creation' }
QuestionRetriever class >> new: cuoora and: aUser [
	^ self new
		cuoora: cuoora;
		user: aUser;
		yourself
]

{ #category : #accesing }
QuestionRetriever >> cuoora: aCuooraInstance [
	cuoora := aCuooraInstance 
]

{ #category : #'as yet unclassified' }
QuestionRetriever >> filterQuestion:aUser [
	^ self subclassResponsibility.
]

{ #category : #accessing }
QuestionRetriever >> last100: aCollection [
	^ aCollection last: (100 min: aCollection size)
]

{ #category : #'as yet unclassified' }
QuestionRetriever >> orderByLikes: aCollection [
	^ aCollection
		asSortedCollection: [ :a :b | a positiveVotes size > b positiveVotes size ]
]

{ #category : #retrieving }
QuestionRetriever >> retrieveQuestions:aUser [
	^ (self filterQuestion:aUser)reject: [ :q | q user = aUser ].
]
