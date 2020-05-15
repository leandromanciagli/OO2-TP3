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
PopularTodayRetriever >> filterQuestion:aUser [
	^ self last100:(self orderByLikes:(self otrometodo)).
		"asSortedCollection: [ :a :b | a positiveVotes size > b positiveVotes size ]).


	popularTCol := OrderedCollection new.
			cuoora questions do:[:q | (q timestamp asDate = Date today) ifTrue: [popularTCol add: q]].
			averageVotes := (cuoora questions sum: [:q | q positiveVotes size ]) / popularTCol size.
			temp := (popularTCol select:[:q | q positiveVotes size >= averageVotes ]) asSortedCollection:[ :a :b | a positiveVotes size > b positiveVotes size ].
			qRet := temp last: (100 min: temp size)."
]

{ #category : #'as yet unclassified' }
PopularTodayRetriever >> otrometodo [
	^ (cuoora questionsOfToday)
		select: [ :q | q positiveVotes size >= self averageVotes ]
]
