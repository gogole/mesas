var app = angular.module('mesas', []);

app.controller('MesasCtrl',['$scope','$http',function($scope,$http)
{	
	$scope.tengoDatos=true;
	 
	$http.get("api/mesas").success(function(data){
		$scope.materias = data;
		$scope.tengoDatos=false;
		//console.log(data);
	});
}
]);