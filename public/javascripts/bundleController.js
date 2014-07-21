angular.module('deployrApp', [])
  .controller('bundleController', function($scope, $http) {
    $http.get('/bundle.json')
    .success(function(data) {
      $scope.bundles = data;
    });
  });
