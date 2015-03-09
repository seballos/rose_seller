
window.angular.module('RoseSeller', ['restangular', 'ui.router']).config(
function(RestangularProvider, $stateProvider, $urlRouterProvider) {
  RestangularProvider.setBaseUrl('/api/v1');
  RestangularProvider.setRequestSuffix('.json');
 // $urlRouterProvider.otherwise('/welcome');
  $stateProvider.state('welcome', {
    url: '/welcome',
    templateUrl: 'partials/welcome/_index.html',
    controller: 'WelcomeController'
  });

});
