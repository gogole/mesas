var app = angular.module('mesas', []);

app.controller('MesasCtrl',['$scope',function($scope)
{
	$scope.materias = 
	[
		{
			nombre:"Algebra",
			m1:
				{
					dia:02,
					mes:01
				},
			m2:{
					dia:02,
					mes:02
				}, 
			m3:{
					dia:02,
					mes:03
				},
			m4:{
					dia:02,
					mes:04
				}, 
			m5:{
					dia:02,
					mes:05
				},
			m6:{
					dia:02,
					mes:06
				}, 
			m7:{
					dia:02,
					mes:07
				}, 
			m8:{
					dia:02,
					mes:08
				}, 
			m9:{
					dia:02,
					mes:09
				}, 
			m10:{
					dia:02,
					mes:10
				}
		},
		{
			nombre:"Administacion",
			m1:
				{
					dia:02,
					mes:01
				},
			m2:{
					dia:02,
					mes:02
				}, 
			m3:{
					dia:02,
					mes:03
				},
			m4:{
					dia:02,
					mes:04
				}, 
			m5:{
					dia:02,
					mes:05
				},
			m6:{
					dia:02,
					mes:06
				}, 
			m7:{
					dia:02,
					mes:07
				}, 
			m8:{
					dia:02,
					mes:08
				}, 
			m9:{
					dia:02,
					mes:09
				}, 
			m10:{
					dia:02,
					mes:10
				}
		}
	];

	$scope.num2mes =function(num)
	{

		switch(num)
		{
			case(01):
				return "Enero";
				break;

			case(02):
				return "Febrero";
				break;

			case(03):
				return "Marzo";
				break;

			case(04):
				return "Abril";
				break;	

			case(05):
				return "Mayo";
				break;	

			case(06):
				return "Junio";
				break;

			case(07):
				return "Julio";
				break;

			case(08):
				return "Agosto";
				break;

			case(09):
				return "Septiembre";
				break;

			case(10):
				return "Octubre";
				break;	

			case(11):
				return "Noviembre";
				break;

			case(12):
				return "Diciembre";
				break;			

			default:
				console.log("Error en num2mes("+num+")");
        		return "Error"
        		break;
		}
	}
}]);