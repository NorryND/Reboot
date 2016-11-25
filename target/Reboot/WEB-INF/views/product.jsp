<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>


<html>

<title>Add Product</title>


<style>

     table{
    width: 40%;
    }
    
    tr, td {
    height: 50px;
    padding: 15px;
    text-align: left;
}

</style>
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.5.6/angular.min.js"></script>
<script type="text/javascript">
       var app=angular.module('App',[]);
       app.controller('ProductController', function($scope, $http) {
       $http.get("cdata").then(function(response){
    	   $scope.Data =response.data;
       });
       });
</script>
<body style="background-color: #8a8a5c" ng-app="App" ng-controller="ProductController">
<%@ include file="jumbotron.jsp" %>
 <%@ include file="header.jsp" %>
	<h2>ADD Product</h2>

	<form:form action="${pageContext.request.contextPath}/addProduct" 
	                       method="post" modelAttribute="product" enctype="multipart/form-data">
		<table align="center">
			
			<tr>
				<td><form:label path="name"><b>Product Name</b></form:label></td>
				<td><form:input path="name" cssStyle="width:60%" /></td>
				<form:errors path="name" cssStyle="color: #ff0000" cssClass="control-errors col-sm-12"></form:errors>
			</tr>
			<tr>
			   
				<td><form:label path="description"><b>Product Description</b></form:label></td>
				<td><form:textarea path="description" cssStyle="width:60%"/>
				<form:errors path="description" cssStyle="color: #ff0000" cssClass="control-errors col-sm-12"></form:errors>
			</tr>
			<tr>
			      
			       <td><form:label path="category"><b>Category</b></form:label></td>
			       <td>
                      
                     <form:select path="category">
                         <form:option value="Select a Category"></form:option>
                         <form:option ng-repeat="cat in Data" value="{{cat.name}}"/>                     
                     </form:select> 
            </td>
			</tr>
			<tr>
				<td><form:label path="stock"><b>Product Stock</b></form:label></td>
				<td><form:input path="stock" cssStyle="width:60%" /></td>
				<form:errors path="stock" cssStyle="color: #ff0000" cssClass="control-errors col-sm-12"></form:errors>
			</tr>
			<tr>
				<td><form:label path="cost"><b>Product Cost</b></form:label></td>
				<td><form:input path="cost" cssStyle="width:60%"/></td>
				<form:errors path="cost" cssStyle="color: #ff0000" cssClass="control-errors col-sm-12"></form:errors>
			</tr>
			<tr>
				<td><form:label path="file"><b>Image to upload</b></form:label></td>
				<td> <form:input type="file" path="file" cssStyle="width:60%"/> </td>
			
				
        	</tr>

			<tr>
			    <td></td>
				<td><input type="submit" value="Add">
			</tr>
			
		</table>
	</form:form>
	<br><br><br>

<%@ include file="footer.jsp" %>
</body>
</html>