# #Define the app and dependencies
# TrieApp = angular.module("TrieApp", ["ngRoute", "templates"])

# #Setup the angular router
# TrieApp.config ["$routeProvider", "$locationProvider", ($routeProvider, $locationProvider) ->
#   $routeProvider
#     .when '/',
#       templateUrl: "index.html",
#       controller: "trie_controller" #taco with below
#   .otherwise
#     redirectTo: "/"

#   $locationProvider.html5Mode(true)

# ]


# #trieApp controller
# TrieApp.controller "trie_controller", ["$scope", "$http", ($scope, $http) ->

# ]

# # Define Config for CSRF token
# TrieApp.config ["$httpProvider", ($httpProvider)->
#   $httpProvider.defaults.headers.common['X-CSRF-Token'] = $('meta[name=csrf-token]').attr('content')
# ]