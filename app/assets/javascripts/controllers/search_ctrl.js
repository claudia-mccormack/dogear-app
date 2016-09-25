(function() {
  'use strict';

  angular.module('app').controller("searchCtrl", function($scope, $http) {
    $scope.subjects = [
      {name: "historical", checked: false},
      {name: "epic/saga", checked: false},
      {name: "family", checked: false},
      {name: "adventure", checked: false},
      {name: "political", checked: false},
      {name: "psychological", checked: false},
    ];
    var subjects = [];
    $http.get('/api/v1/books.json').then(function(response) {
      $scope.books = response.data;
    });

    $scope.searchSubjects = function(subject) {
      if (subject.checked) {
        subjects.push(subject.name);
      } else {
        var index = subjects.indexOf(subject);
        subjects.splice(index, 1);
      }
      var subjectsParams = {
          subjects: subjects
      };
      $http({
        method: "GET",
        url: "/api/v1/books.json?name=" + subjects
      }).then(function(response) {
        console.log($scope.books = response.data);
      });
    };
  });
})();
