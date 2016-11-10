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
<body style="background-color: #8a8a5c">
 <%@ include file="header.jsp" %>
<h4>List of available Products</h4>
<p>${message} </p>


<table width="50%">
	<tr>
	    
		<th align="left">Id</th>
		<th align="left">Name</th>
		<th align="left">Description</th>
		<th align="left">Cost</th>
		<th align="left">Stock</th>
		<th align="left">Images</th>
		<th align="center">Settings</th>
		
		
		
	</tr>
	<c:forEach items="${productlist}" var="product">
		<tr>
			
			<td>${product.id}</td>
			<td>${product.name}</td>
			<td>${product.description}</td>
			<td align="left">${product.cost}</td>
			<td>${product.stock}</td>
			<td><a href="details/${product.id}">Details</a></td>
			<sec:authorize access="hasRole('ROLE_ADMIN')">
			  <td><a href="editProduct/${product.id }">Edit</a></td>
		      <td><a href="deleteProduct/${product.id}">Delete</a></td>		     
			</sec:authorize>
			
		</tr>
	</c:forEach>
</table>
<%@ include file="footer.jsp" %>
</body>
</html>