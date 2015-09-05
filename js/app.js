var app = angular.module('mesas', []);

app.controller('MesasCtrl',['$scope',function($scope)
{
	$scope.materias = 
	[
		{
			nombre:"Algebra",
			a:"24-feb",
			b:"10-mar",
			c:"08-abr",
		},
		{
			nombre:"Administracion",
			a:"24-feb",
			b:"10-mar",
			c:"08-abr",
		}
	]
}]);