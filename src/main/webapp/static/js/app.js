'use strict';

var App = angular.module('myApp',[]);
var App1 = angular.module('loginApp',[]);

App1.config(['$qProvider', function ($qProvider) {
    $qProvider.errorOnUnhandledRejections(false);
}]);

