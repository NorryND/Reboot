<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>

<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.5.6/angular.min.js"></script>
<script type="text/javascript">
var app=angular.module('App',[]);
app.controller('ProductController', function($scope, $http) {
$http.get("pdata").then(function(response){
	   $scope.Name =response.data;
});
});
</script>
<body>
<div ng-app="App" ng-controller="ProductController">

<p>Type a letter in the input field:</p>

<p><input type="text" ng-model="test"></p>

<ul>
  <li ng-repeat="x in Name | filter:test">
    {{ x }}
  </li>
</ul>

</div>
</body>
</html>