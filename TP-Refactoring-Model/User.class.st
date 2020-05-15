Class {
	#name : #User,
	#superclass : #Object,
	#instVars : [
		'questionRetriever',
		'questions',
		'username',
		'password',
		'topics',
		'following'
	],
	#category : #'TP-Refactoring-Model'
}

{ #category : #'instance-creation' }
User class >> username: aUsername password: aPassword questionRetriever: aQuestionRetriever [
	^ self new
		initializeUser: aUsername
		password: aPassword
		questionRetriever: aQuestionRetriever

	"^ self new
		username: aUsername;
		password: aPassword;
		questionRetriever: aQuestionRetriever;
		yourself"
]

{ #category : #accessing }
User >> addQuestion: aQuestion [
	questions add: aQuestion
]

{ #category : #accessing }
User >> addTopic: aTopic [
	topics add: aTopic 

]

{ #category : #accessing }
User >> follow: aUser [
	following add: aUser 
]

{ #category : #accessing }
User >> following [
	^ following
]

{ #category : #initialize }
User >> initialize [
	questions := OrderedCollection new.
	topics := OrderedCollection new.
	following := OrderedCollection new
]

{ #category : #initialization }
User >> initializeUser: aUsername password: aPassword questionRetriever: aQuestionRetriever [
	username := aUsername.
	password := aPassword.
	questionRetriever := aQuestionRetriever
]

{ #category : #accessing }
User >> password [
	^ password
]

{ #category : #private }
User >> password: aPassword [
	password := aPassword
]

{ #category : #accessing }
User >> questionRetriever [
	^ questionRetriever
]

{ #category : #private }
User >> questionRetriever: aQuestionRetriever [
	questionRetriever := aQuestionRetriever.
]

{ #category : #accessing }
User >> questions [
	^ questions
]

{ #category : #'as yet unclassified' }
User >> questionsFromAllTopics [
	^ self topics flatCollect: [ :topic | topic questions ]
]

{ #category : #'as yet unclassified' }
User >> questionsFromFollowers [
	^ self following  flatCollect: [: follower | follower questions ].
]

{ #category : #accessing }
User >> questionsOfInterest [
	^ questionRetriever retrieveQuestions.
]

{ #category : #accessing }
User >> topics [
	^ topics
]

{ #category : #accessing }
User >> username [
	^ username
]

{ #category : #private }
User >> username: anObject [
	username := anObject
]
