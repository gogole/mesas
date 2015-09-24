app.factory('MateriasFactory',['$http',function($http)
{
	var factory={};
    
	factory.datos=[];
	
    factory.getAll= function(cb)
	    {
	        $http.get("datos.js")
		        .success(cb);
	    };
    return factory;
}]);
