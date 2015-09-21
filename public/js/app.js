var app = angular.module('mesas', ['ngRoute']);

app.config(function($routeProvider){
  $routeProvider
	  .when('/',{ 
	     templateUrl:'parciales/main.html',
	     controller: 'MesasCtrl'
	  })
});