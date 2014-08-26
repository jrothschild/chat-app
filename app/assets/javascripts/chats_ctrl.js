(function () {
  "use strict";

  angular.module("app").controller("chatsCtrl", function ($scope, $http) {
    
      $scope.init = function(url){
        $scope.item = {url: url};
      }

    $scope.chat = function(message, url) {
      $http.post('/comments', {'message' : message, 'url' : $scope.item.url}).then(function(response) {
     
        }, function(error) {
        
        console.log(error);
      });
    }

    $scope.pressKey = function(event) {
      if (event.keyCode === 13) { //user hits Enter key
        $scope.chat($scope.message, $scope.url);
      }
    }
  
  }); 
})();