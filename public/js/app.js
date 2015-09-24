var app = angular.module('mesas', ['ngRoute']);

app.config(function($routeProvider){
	$routeProvider
	  .when('/',{ 
	     templateUrl:'parciales/lista.html',
	     controller: 'MesasCtrl'
	  })
	  .when('/mesas',{ 
	     templateUrl:'parciales/main.html',
	     controller: 'MesasCtrl'
	  })
	  .when('/materia/:id',{ 
	     templateUrl:'parciales/detalle.html',
	     controller: 'DetalleCtrl'
	  })
	  .otherwise({
        redirectTo: '/'
      });
});