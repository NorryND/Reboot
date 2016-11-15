<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd"> 

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Category</title>
</head>
<body style="background-color: #8a8a5c">
<%@ include file="jumbotron.jsp" %>
 <%@ include file="header.jsp" %>
<h4>List of available Category</h4>
<p>${message} </p>


<table width="50%">
	<tr>
	    
		<th align="left">Id</th>
		<th align="left">Name</th>
		<th align="center">Settings</th>
		
		
	</tr>
	<c:forEach items="${categorylist}" var="category">
		<tr>
			
			<td>${category.id}</td>
			<td>${category.name}</td>
			
			<td><a href="editCategory/${category.id }">Edit</a></td>
		    <td><a href="deleteCategory/${category.id}">Delete</a></td>
			
			
		</tr>
	</c:forEach>
</table>
<br><br><br>
<%@ include file="footer.jsp" %>
</body>
</html>