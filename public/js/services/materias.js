app.factory('MateriasFactory',['$http',function($http)
{
	var factory={};
    
	factory.datos=[];
	
    factory.getAll= function(cb)
	    {
	        $http.get("api/mesas")
		        .success(cb);
	    };
    return factory;
}]);
