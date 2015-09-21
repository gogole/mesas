app.factory('MateriasFactory',['$http',function($http)
{
	var factory={};
    
    factory.getAll= function(cb)
	    {
	        $http.get("api/mesas")
		        .success(cb);
	    }
    return factory;
}]);
