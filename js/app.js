var app = angular.module('mesas', []);

app.controller('MesasCtrl',['$scope',function($scope)
{
	$scope.materias = 
	[
		{
			nombre:"Algebra",
			m1:"14-feb",
			m2:"28-feb", 
			m3:"21-mar",
			m4:"16-may", 
			m5:"11-jul",
			m6:"01-ago", 
			m7:"14-sep", 
			m8:"24-oct", 
			m9:"28-nov", 
			m10:"19-dic" 
		},
		{
			nombre:"Administacion",
			m1:"14-feb",
			m2:"28-feb", 
			m3:"21-mar",
			m4:"16-may", 
			m5:"11-jul",
			m6:"01-ago", 
			m7:"14-sep", 
			m8:"24-oct", 
			m9:"28-nov", 
			m10:"19-dic" 
		}
	]
}]);