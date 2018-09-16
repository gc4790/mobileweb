'use strict';
/*
(function(){
	
	angular.module("loginApp")
	.factory("loginService",loginService);
	
	function loginService($http){
		var REST_SERVICE_URI =  'http://localhost:8080/mobileweb/auth/';
		return {
			validateUser : getLoggedInUser
		}
		
		function getLoggedInUser(user){
			 $http.post(REST_SERVICE_URI+'validUser',user)
	            .then(
	            function (response) {
	                deferred.resolve(response.data);
	            }
	        );
		}
	}
	
})();*/

angular.module('loginApp').factory('loginService', ['$http','$q',function loginService($http,$q){
	var REST_SERVICE_URI =  'http://localhost:8080/mobileweb/';
	return {
		validateUser : validateUser
	}
	
	function validateUser(user){
		return  $http({
			    method:'POST',
				url:REST_SERVICE_URI+'validateUser1',
                data:user
			}); 
		}
	}]);