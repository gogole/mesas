var app = angular.module('mesas', ['ngRoute']);

app.config(function($routeProvider){
  $routeProvider
  .when('/',{ 
     templateUrl:'main.html',
     controller: 'MainController'
  }).when('/detalle',{ 
     templateUrl:'detalle.html',
     controller: 'detalleCtr'
  });
});