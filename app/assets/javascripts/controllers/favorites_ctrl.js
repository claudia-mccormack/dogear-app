(function() {
  'use strict';

  angular.module('app').controller('favoritesCtrl', function($scope, $http) {
    $http.get('/api/v1/favorites.json').then(function(response) {
      $scope.favorites = response.data;
      console.log(response.data);
      fillStars();
    });


    $scope.rateFavorite = function(favorite, star) {
      console.log(star);
      var favoriteParams = {
        favorite_id: favorite.id,
        rating: star.rating
      };
      $http.patch("/api/v1/favorites/"+favorite.id+".json", favoriteParams).success(function(response) {
        favorite.rating = response.rating;
        fillStars();
      });
    };

    function fillStars() {
      $scope.favorites.forEach(function(favorite) {
        favorite.stars.forEach(function(star) {
          star.filled = favorite.rating >= star.rating;
        });
      });
    }

    $scope.emptyStar = function(favorite, star) {
      favorite.stars.forEach(function(s) {
        if (s.rating > favorite.rating) {
          s.filled = false;
        }
      });
    };

    $scope.fillStar = function(favorite, star) {
      favorite.stars.forEach(function(s) {
        if (s.rating <= star.rating) {
          s.filled = true;
        }
      });
    };

    // $scope.setDeadline = function(favorite, deadline){
    //   $scope.favorites.forEach(function(f){
    //     if (!f.finished)
    //   });
    // };



  });
})();
