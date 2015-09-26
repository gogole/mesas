app.controller('MesasCtrl',['$scope','MateriasFactory',function($scope,MateriasFactory)
{	
 
 $scope.materias= MateriasFactory;

     $scope.materias.$loaded()
      .then(function() {
        console.log($scope.materias);
         $('#load').hide();
         $('#contenido').fadeIn(2000);
      })
      .catch(function(err) {
        console.error(err);
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