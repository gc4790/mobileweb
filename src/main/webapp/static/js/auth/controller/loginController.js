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
			loginService.validateUser(logCtrl.user)
		}

}]);