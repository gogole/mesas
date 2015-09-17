var app = angular.module('mesas', []);

app.controller('MesasCtrl',['$scope','$http',function($scope,$http)
{	
	$scope.tengoDatos=true;
	 
	$http.get("api/mesas").success(function(data){
		$scope.materias = data;
		$scope.tengoDatos=false;
		//console.log(data);
	});

	function borrarAcentos(valor) {
        return valor
            .replace(/á/g, 'a')            
            .replace(/é/g, 'e')
            .replace(/í/g, 'i')
            .replace(/ó/g, 'o')
            .replace(/ú/g, 'u');
    };

    $scope.ignorarAcentos = function(item) {               
        if (!$scope.filtro) return true;       

        var text = borrarAcentos(item.nombre.toLowerCase())
        var search = borrarAcentos($scope.filtro.toLowerCase());
        return text.indexOf(search) > -1;
    };
}
]);