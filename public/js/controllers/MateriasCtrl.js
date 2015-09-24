app.controller('MateriasCtrl',['$scope','$http','MateriasFactory',function($scope,$http,materias)
{	
	$scope.materias= 
	[
		{
		"id":"206",
		"ano": 2,
		"cuatrimestre": 2,
		"nombre": "Administración y Gestión de Organizaciones",
		"fechas": 
		[
			"14-feb",
			"28-feb",
			"21-mar",
			"16-may",
			"11-jul",
			"01-ago",
			"14-sep",
			"24-oct",
			"28-nov",
			"19-dic"
		],
		"correlativas_cursar":{
									"aprobadas":[],
									"regular":["105"]
								},
		"correlativas_rendir":{
									"aprobadas":["105"],
									"regular":[]
								},
		"carrera": "Lic. en Sistemas de Información",
		"correlativas_cursar":{
									"aprobadas":[],
									"regular":["105"]
								},
		"correlativas_rendir":{
									"aprobadas":["105"],
									"regular":[]
								},
		"carrera": "Lic. en Sistemas de Información"
		},
			{
		"id":"206",
		"ano": 2,
		"cuatrimestre": 2,
		"nombre": "Algebra",
		"fechas": 
		[
			"14-feb",
			"28-feb",
			"21-mar",
			"16-may",
			"11-jul",
			"01-ago",
			"14-sep",
			"24-oct",
			"28-nov",
			"19-dic"
		],
		"correlativas_cursar":{
									"aprobadas":[],
									"regular":["105"]
								},
		"correlativas_rendir":{
									"aprobadas":["105"],
									"regular":[]
								},
		"carrera": "Lic. en Sistemas de Información",
		"correlativas_cursar":{
									"aprobadas":[],
									"regular":["105"]
								},
		"correlativas_rendir":{
									"aprobadas":["105"],
									"regular":[]
								},
		"carrera": "Lic. en Sistemas de Información"
		},
			{
		"id":"206",
		"ano": 2,
		"cuatrimestre": 2,
		"nombre": "Estructura de Datos 1",
		"fechas": 
		[
			"14-feb",
			"28-feb",
			"21-mar",
			"16-may",
			"11-jul",
			"01-ago",
			"14-sep",
			"24-oct",
			"28-nov",
			"19-dic"
		],
		"correlativas_cursar":{
									"aprobadas":[],
									"regular":["105"]
								},
		"correlativas_rendir":{
									"aprobadas":["105"],
									"regular":[]
								},
		"carrera": "Lic. en Sistemas de Información",
		"correlativas_cursar":{
									"aprobadas":[],
									"regular":["105"]
								},
		"correlativas_rendir":{
									"aprobadas":["105"],
									"regular":[]
								},
		"carrera": "Lic. en Sistemas de Información"
		}
	];

}]);