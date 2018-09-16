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
		
		function loginValidation(){
			var returnPromise = loginService.validateUser(logCtrl.user);
			returnPromise.success(function(response){
				console.log(response);
			})
		}

}]);