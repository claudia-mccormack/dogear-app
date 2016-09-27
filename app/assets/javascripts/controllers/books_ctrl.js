(function () {
  "use strict";

  angular.module("app").controller("booksCtrl", function($scope) {
    window.$scope = $scope;

    function setup() {
    $http.get('/').then(function(response) {
      $scope.books = response.data;
    });
  }







  });
})();
