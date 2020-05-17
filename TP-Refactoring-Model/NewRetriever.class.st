Class {
	#name : #NewRetriever,
	#superclass : #QuestionRetriever,
	#category : #'TP-Refactoring-Model'
}

{ #category : #'as yet unclassified' }
NewRetriever >> filterQuestion: aUser [
	^ self last100: (self orderByLikes: cuoora questionsOfToday)
]
