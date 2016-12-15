<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd"> 
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Products</title>
</head>

<style>

body {
  background-image: url("<c:url value="/images/img13.jpg"/>");
  background-position: center center;
  background-repeat: no-repeat;
  background-attachment: fixed;
  background-size: cover;
  background-color: #464646;
}

table {
    border-collapse: collapse;
    width: 50%;
}

 tr, td {
    height: 50px;
    padding: 15px;
    text-align: center;
}

th, td {
    padding: 15px;
    text-align: center;
    border-bottom: 1px solid black;
}

tr:hover{background-color:buttonshadow;}

th {
    background-color: graytext;
    color: white;
}

 a.style:link, a.style:visited {
    background-color: graytext;
    color: white;
    padding: 8px 16px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
}


a.style:hover, a.style:active {
    background-color: green;
}

input[type=text] {
    align :center;
    width: 50%;
    padding: 12px 20px;
    margin: 8px 0;
    box-sizing: border-box;
}

</style>

<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.5.6/angular.min.js"></script>
<script type="text/javascript">
var app=angular.module('App',[]);
app.controller('ProductController', function($scope, $http) {
$http.get("pdata").then(function(response){
	   $scope.Data =response.data;
});
});
</script>

<body ng-app="App" ng-controller="ProductController">
<%@ include file="jumbotron.jsp" %>
 <%@ include file="header.jsp" %>
<h4 align="center">List of Available Products</h4>
<p>${message} </p>
<div class="container" align="center">
<input type="text" placeholder="Product Search" ng-model="test.name">
</div>
<table align="center">
	<tr>
	    
		<th>Id</th>
		<th align="center">Name</th>
		<th>Category</th>
		<th>Cost</th>
		<th>Stock</th>
		<th colspan="3" align="center">Settings</th>
		
		
		
		
	</tr>
		<tr ng-repeat="product in Data|filter:test">
			
			<td>{{product.id}}</td>
			<td>{{product.name}}</td>
		    <td>{{product.category}}</td>
			<td align="left">{{product.cost}}</td>
			<td>{{product.stock}}</td>
			<td><a href="${pageContext.request.contextPath}/details?id={{product.id}}" class="style">Details</a></td>
			<sec:authorize access="hasRole('ROLE_ADMIN')">
			  <td><a href="editProduct?id={{product.id}}" class="style">Edit</a></td>
		      <td><a href="deleteProduct?id={{product.id}}" class="style">Delete</a></td>		     
			</sec:authorize>
			
		</tr>

</table>
<br><br><br>
<%@ include file="footer.jsp" %>
</body>
</html>