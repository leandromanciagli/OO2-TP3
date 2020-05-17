Class {
	#name : #SocialRetriever,
	#superclass : #QuestionRetriever,
	#category : #'TP-Refactoring-Model'
}

{ #category : #'as yet unclassified' }
SocialRetriever >> filterQuestion: aUser [
	^ self last100: (self orderByLikes: aUser questionsFromFollowers)
]
