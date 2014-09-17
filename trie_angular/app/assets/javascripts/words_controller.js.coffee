WordCtrls = angular.module("WordCtrls", [])

class WordsCtrl

  constructor: (@scope, @Word)->
    @greeting = "hello!!"
    @Word.all()
    return this
  addWord: (newWord) ->
    @Word.create(newWord)
    .success (data) ->
      console.log(data)
  sayHello: ()->
    "hello there again!!"

WordCtrls.controller("WordsCtrl", ["$scope", "Word", WordsCtrl])