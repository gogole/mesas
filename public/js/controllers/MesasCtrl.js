app.controller('MesasCtrl',['$scope','$http','MateriasFactory',function($scope,$http,materias)
{	

    materias.getAll(
            function(data){
                $('#load').hide();
                $('#tabla').fadeIn(2000);
                $scope.materias=data;
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