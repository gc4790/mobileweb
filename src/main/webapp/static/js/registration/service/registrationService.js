(function(){
	
	angular.module('indvReg').factory('registrationService', ['$http', '$q', function($http, $q){
		  var REST_SERVICE_URI = 'http://localhost:8080/mobileweb/';
		  
		  return {
			  saveRegistrion : saveRegistrion,
		  }
		  
		  function saveRegistrion(regData){
			  return $http(
					{
						url:REST_SERVICE_URI+"saveRegistration",
						method:"POST",
						data:regData
					}  
			  );
		  }
		
	}])

	    
	
})();