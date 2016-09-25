(function() {
  'use strict';

  angular.module('app').controller('ratingsCtrl', function($scope, $http) {
    $http.get('/api/v1/favorites.json').then(function(response) {
      $scope.favorites = response.data;
      fillStars();
    })

    $scope.favoriteBook = function(favorite, star) {
      console.log(star)
      var favoriteParams = {
        favorite_id: favorite.id,
        rating: star.rating
      }
      $http.patch('/api/v1/favorites.json', favoriteParams).success(function(response) {
        favorite.rating = response.rating
        fillStars();
      })
    }

    function fillStars() {
      $scope.favorites.forEach(function(favorite) {
        favorite.stars.forEach(function(star) {
          star.filled = favorite.rating >= star.rating
        })
      })
    }

    $scope.emptyStar = function(favorite, star) {
      favorite.stars.forEach(function(s) {
        if (s.rating > favorite.rating) {
          s.filled = false;
        }
      })
    }

    $scope.fillStar = function(favorite, star) {
      favorite.stars.forEach(function(s) {
        if (s.rating <= star.rating) {
          s.filled = true;
        }
      })
    }
  });
})();
