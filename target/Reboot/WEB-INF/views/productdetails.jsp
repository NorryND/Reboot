<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd"> 
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Products</title>
</head>

<style>
img.final{

display: block;
    margin-left: auto;
    margin-right: auto; 
    float: left;

}
     table{
      
    width: 40%;
    }
    
    tr, td {
    height: 50px;
    padding: 100px;
    text-align: left;
    margin-left: 2cm;
    }

</style>

<body>
<%@ include file="jumbotron.jsp" %>
 <%@ include file="header.jsp" %>

<form:form action="${pageContext.request.contextPath}/addCart?id=${product.id}" method="post" modelAttribute="product">


		<img class="final" src ="${pageContext.request.contextPath}/upload/${product.name}.jpg" width="40%" height="40%"/>
		<br><br><br><br>
		<table align="center" >
		   	<tr>
				<td><form:label path="name" cssClass="control-label col-sm-3">Product ID</form:label></td>
				
				<td class="control-label col-sm-9"><b>${product.id}</b></td>
			</tr>			
			
			<tr>
				<td><form:label path="name" cssClass="control-label col-sm-3">Product Name</form:label></td>
				
				<td class="control-label col-sm-9"><b>${product.name}</b></td>
			</tr>
			<tr>
				<td><form:label path="description" cssClass="control-label col-sm-3">Product Description</form:label></td>
				
				<td class="control-label col-sm-9"> ${product.description}</td>
			</tr>
			
			<tr>
				<td><form:label path="stock" cssClass="control-label col-sm-3">Product Stock</form:label></td>
				
				<td class="control-label col-sm-9">${product.stock}</td>
			</tr>
			<tr>
				<td><form:label path="cost" cssClass="control-label col-sm-3">Product Cost</form:label></td>
				
				<td class="control-label col-sm-9">${product.cost}</td>
			</tr>
			 <sec:authorize access="isAuthenticated()">
			 <tr>
			     <td></td>
			     <td><input type="submit" value="Add to Cart">
			 
			 </tr>
			 </sec:authorize>
		</table>

	</form:form>
	
	<br><br><br>
	<p align="center">
Products sold on Reboot are brand new and 100% genuine. If you find any error, 
<a href="${pageContext.request.contextPath}/Contact">please report here.</a></p>
<br><br><br><br><br>
<%@ include file="footer.jsp" %>
</body>
</html>