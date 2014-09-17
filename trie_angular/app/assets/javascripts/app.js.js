// Generated by CoffeeScript 1.8.0
var TrieApp;

TrieApp = angular.module("TrieApp", ["ngRoute", "templates"]);

TrieApp.config([
  "$routeProvider", "$locationProvider", function($routeProvider, $locationProvider) {
    $routeProvider.when('/', {
      templateUrl: "index.html",
      controller: "trie_controller"
    }).otherwise({
      redirectTo: "/"
    });
    return $locationProvider.html5Mode(true);
  }
]);

TrieApp.controller("trie_controller", ["$scope", "$http", function($scope, $http) {}]);

TrieApp.config([
  "$httpProvider", function($httpProvider) {
    return $httpProvider.defaults.headers.common['X-CSRF-Token'] = $('meta[name=csrf-token]').attr('content');
  }
]);