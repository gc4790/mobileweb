'use strict';
angular.module('indvReg').controller('indRegistrationController', ['$scope','registrationService', function($scope,registrationService){
	var indRegCtrl = this;
	
	indRegCtrl.regstrnData = {};
	
	indRegCtrl.saveIndividualRegData = saveIndividualRegData;
	
	function saveIndividualRegData(){
		console.log(indRegCtrl.regstrnData);
		registrationService.saveRegistrion(indRegCtrl.regstrnData);
	}
}]);
