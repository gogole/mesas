var app = angular.module('mesas', ['ngRoute']);

app.config(function($locationProvider,$routeProvider){
	
	$locationProvider.html5Mode({
	  enabled: true,
	  requireBase: false
	});
	
	$routeProvider
	  .when('/',{ 
	     templateUrl:'parciales/main.html',
	     controller: 'MesasCtrl'
	  })
});