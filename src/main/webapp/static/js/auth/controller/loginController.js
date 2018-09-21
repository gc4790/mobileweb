/*'use strict';
(function(){
	 angular.module('loginApp')
	.controller('loginController',loginController);
	
	function loginController(loginService){
		var logCtrl = this;
		logCtrl.validateUser = validateUser;
		logCtrl.loginValidation = loginValidation;
		
		function validateUser(){
			loginService.validateUser(logCtrl.user)
		}
	}
	
})();
*/

'use strict';
angular.module('loginApp').controller('loginController', ['$scope','loginService', function($scope,loginService){
		var logCtrl = this;
		logCtrl.validateUser = loginValidation;
		logCtrl.userData = {}
		
		function loginValidation(){
			var returnPromise = loginService.validateUser(logCtrl.user);
			returnPromise.then(function successCallback(response) {
				logCtrl.userData = response.data;
			}, function errorCallback(response) {
			    console.log(response.statusText);
			});
		}

}]);