app.controller('DetalleCtrl',['$scope','$routeParams','MateriasFactory',function($scope,$routeParams,MateriasFactory)
{
	$scope.materias=[];
	MateriasFactory.getAll(
            function(data){
				$scope.materia = data.filter(buscarPorId)[0];
				console.log($scope.materia);
            });

	function buscarPorId(elemento)
	{
		return elemento.id == $routeParams.id;
	};

}]);