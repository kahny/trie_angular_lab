// Generated by CoffeeScript 1.8.0
var WordFactories;

WordFactories = angular.module("WordFactories", []);

WordFactories.factory("Word", [
  "$http", function($http) {
    return {
      all: function() {
        console.log("Getting All!");
        return $http.get("/words.json").success(function(data) {
          return console.log("data", data);
        });
      },
      create: function(newWord) {
        console.log(newWord);
        return $http.post("/words.json", {
          word: newWord
        });
      }
    };
  }
]);