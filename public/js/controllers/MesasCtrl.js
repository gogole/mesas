app.controller('MesasCtrl',['$scope','MateriasFactory',function($scope,materias)
{	
    materias.getAll(
            function(data){
                $('#load').hide();
                $('#contenido').fadeIn(2000);
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