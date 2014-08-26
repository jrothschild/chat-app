(function () {
  "use strict";

  angular.module("app").controller("chatsCtrl", function ($scope, $http) {
    
      $scope.init = function(url){
        $scope.item = {url: url};
      }

    $scope.chat = function(message, url) {
      if(message) {
        $http.post('/comments', {'message' : message, 'url' : $scope.item.url}).then(function(response) {
          $scope.message = '';
          }, function(error) {
          
          console.log(error);
        });
      }
    }

    $scope.pressKey = function(event) {
      if (event.keyCode === 13 && $scope.message) { //user hits Enter key and there's a message
        $scope.chat($scope.message, $scope.url);
      } else if (event.keyCode === 13) { // user hits Enter and there's no message
        event.preventDefault();
      }
    }
  
  }); 
})();