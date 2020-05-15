Class {
	#name : #SocialRetriever,
	#superclass : #QuestionRetriever,
	#category : #'TP-Refactoring-Model'
}

{ #category : #'as yet unclassified' }
SocialRetriever >> filterQuestion:aUser [ 
	^ self last100:(self orderByLikes:(aUser questionsFromFollowers)).
		"asSortedCollection: [ :a :b | a positiveVotes size > b positiveVotes size ])."

	"followingCol := OrderedCollection new.
			aUser following do:[ :follow | followingCol addAll: follow questions ].
			temp := followingCol asSortedCollection:[ :a :b | a positiveVotes size > b positiveVotes size ].
			qRet := temp last: (100 min: temp size)."
]
