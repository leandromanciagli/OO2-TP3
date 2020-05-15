Class {
	#name : #TopicRetriever,
	#superclass : #QuestionRetriever,
	#category : #'TP-Refactoring-Model'
}

{ #category : #'as yet unclassified' }
TopicRetriever >> filterQuestion:aUser [
	^ self last100:(self orderByLikes: (aUser questionsFromAllTopics)).
		"asSortedCollection: [ :a :b | a positiveVotes size > b positiveVotes size ]).
		
	topicsCol := OrderedCollection new.
			aUser topics do:[ :topic | topicsCol addAll: topic questions ].
			temp := topicsCol asSortedCollection:[ :a :b | a positiveVotes size > b positiveVotes size ].
			qRet := temp last: (100 min: temp size).
		]."
]
