(function() {
  'use strict';

  angular.module('app').controller("searchCtrl", function($scope, $http) {
    $scope.subjects = [
      {name: "Historical", checked: false},
      {name: "Epic", checked: false},
      {name: "Political", checked: false},
      {name: "Family", checked: false},
      {name: "New York", checked: false},
      {name: "Satire", checked: false},
      {name: "Relationships", checked: false},
      {name: "Mystery", checked: false},
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
