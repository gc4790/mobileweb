<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
 <script src="static/js/angular.min.js"></script>
<script src="static/js/app.js"></script>
 <script src="static/js/auth/service/loginService.js"></script>
 <script src="static/js/auth/controller/loginController.js"></script>
 
</head>
<body >
<div ng-app="loginApp" ng-controller="loginController as logCtrl">
<input type="text" ng-model = "logCtrl.user.name">
<button value="Save" ng-click="logCtrl.validateUser()" >Save</button>
</div>
</body>
</html>