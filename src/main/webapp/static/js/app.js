'use strict';

var App = angular.module('myApp',[]);
var LoginApp = angular.module('loginApp',[]);
var RegApp=angular.module('indvReg',[]);

LoginApp.config(['$qProvider', function ($qProvider) {
    $qProvider.errorOnUnhandledRejections(false);
}]);

