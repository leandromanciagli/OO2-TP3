Class {
	#name : #PopularTodayRetriever,
	#superclass : #QuestionRetriever,
	#category : #'TP-Refactoring-Model'
}

{ #category : #'as yet unclassified' }
PopularTodayRetriever >> averageVotes [
	^ ((cuoora sumQuestion)
		/(cuoora questionsOfToday) size).
]

{ #category : #'as yet unclassified' }
PopularTodayRetriever >> filterQuestion: aUser [
	^ self last100: (self orderByLikes: self getTodayQuestions)
]

{ #category : #'as yet unclassified' }
PopularTodayRetriever >> getTodayQuestions [
	^ cuoora questionsOfToday
		select: [ :q | q positiveVotes size >= self averageVotes ]
]
