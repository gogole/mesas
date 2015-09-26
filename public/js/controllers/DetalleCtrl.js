app.controller('DetalleCtrl',['$scope','$routeParams','MateriasFactory',function($scope,$routeParams,MateriasFactory)
{
	 
	 $scope.materias= MateriasFactory;

     $scope.materias.$loaded()
      .then(function() {
        $scope.materia = data.filter(buscarPorId)[0];
      })
      .catch(function(err) {
        console.error(err);
      });

	function buscarPorId(elemento)
	{
		return elemento.id == $routeParams.id;
	};

}]);