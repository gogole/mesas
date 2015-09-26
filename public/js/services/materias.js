app.factory('MateriasFactory',['$http','$firebaseArray',function($http,$firebaseArray)
{
	var ref = new Firebase("https:mesas.firebaseio.com/");
	
    return $firebaseArray(ref);
}]);
