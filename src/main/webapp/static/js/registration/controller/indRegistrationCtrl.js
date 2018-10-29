'use strict';
angular.module('indvReg').controller('indRegistrationController', ['$scope','registrationService', function($scope,registrationService){
	var indRegCtrl = this;  //object created
	
	indRegCtrl.regstrnData = {};
	
	indRegCtrl.saveIndividualRegData = saveIndividualRegData;
	
	function saveIndividualRegData(){
		console.log(indRegCtrl.regstrnData);
		registrationService.saveRegistrion(indRegCtrl.regstrnData);
	}
}]);
