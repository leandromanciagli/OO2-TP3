Class {
	#name : #NewRetriever,
	#superclass : #QuestionRetriever,
	#category : #'TP-Refactoring-Model'
}

{ #category : #'as yet unclassified' }
NewRetriever >> filterQuestion:aUser [
	^ self last100:(self orderByLikes: (cuoora questionsOfToday)).
	
	
		"asSortedCollection: [ :a :b | a positiveVotes size > b positiveVotes size ]).
		
	newsCol := OrderedCollection new.
			cuoora questions do:[:q | (q timestamp asDate = Date today) ifTrue: [newsCol add: q]].
			temp := newsCol asSortedCollection:[ :a :b | a positiveVotes size > b positiveVotes size ].
			qRet := temp last: (100 min: temp size).
		]."
]
