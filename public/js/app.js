var app = angular.module('mesas', []);

app.controller('MesasCtrl',['$scope','$http',function($scope,$http)
{
	 
	$http.get("datos.json").success(function(data){
		$scope.materias = data;
		//console.log(data);
	});

	$scope.num2mes =function(num)
	{

		switch(num)
		{
			case("01"):
				return "Enero";
				break;

			case("02"):
				return "Febrero";
				break;

			case("03"):
				return "Marzo";
				break;

			case("04"):
				return "Abril";
				break;	

			case("05"):
				return "Mayo";
				break;	

			case("06"):
				return "Junio";
				break;

			case("07"):
				return "Julio";
				break;

			case("08"):
				return "Agosto";
				break;

			case("09"):
				return "Septiembre";
				break;

			case("10"):
				return "Octubre";
				break;	

			case("11"):
				return "Noviembre";
				break;

			case("12"):
				return "Diciembre";
				break;			

			default:
				console.log("Error en num2mes("+num+")");
        		return "Error"
        		break;
		}
	}
}]);