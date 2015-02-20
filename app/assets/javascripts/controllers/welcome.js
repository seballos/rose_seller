// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

window.roseSeller.controller('WelcomeController', ['$scope', 'Restangular',  function($scope, Restangular) {
  var responseData = Restangular.all('products/highlight_products');
  responseData.getList().then(function(products) {
    $scope.allProducts = products;
  });
}]);
