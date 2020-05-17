Class {
	#name : #TopicRetriever,
	#superclass : #QuestionRetriever,
	#category : #'TP-Refactoring-Model'
}

{ #category : #'as yet unclassified' }
TopicRetriever >> filterQuestion: aUser [
	^ self last100: (self orderByLikes: aUser questionsFromAllTopics)
]
