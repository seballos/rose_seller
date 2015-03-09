// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

window.angular.module('RoseSeller').controller('WelcomeController', ['$scope', 'Restangular',  function($scope, Restangular) {
  var responseData = Restangular.all('products').all('highlighted');
  responseData.getList().then(function(products) {
    $scope.allProducts = products;
  });
}]);
