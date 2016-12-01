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
table {
    border-collapse: collapse;
    width: 50%;
}

 tr, td {
    height: 50px;
    padding: 15px;
    text-align: left;
}

th, td {
    padding: 8px;
    text-align: left;
    border-bottom: 1px solid black;
}

tr:hover{background-color:buttonhighlight;}

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


</style>

<body style="background-color: #8a8a5c">
<%@ include file="jumbotron.jsp" %>
 <%@ include file="header.jsp" %>
<h4>List of available Products</h4>
<p>${message} </p>


<table align="center">
	<tr>
	    
		<th>Id</th>
		<th>Name</th>
		<th>Category</th>
		<th>Cost</th>
		<th>Stock</th>
		<th colspan="3" align="center">Settings</th>
		
		
		
		
	</tr>
	<c:forEach items="${productlist}" var="product">
		<tr>
			
			<td>${product.id}</td>
			<td>${product.name}</td>
		    <td>${product.category}</td>
			<td align="left">${product.cost}</td>
			<td>${product.stock}</td>
			<td><a href="${pageContext.request.contextPath}/details/${product.id}" class="style">Details</a></td>
			<sec:authorize access="hasRole('ROLE_ADMIN')">
			  <td><a href="editProduct/${product.id }" class="style">Edit</a></td>
		      <td><a href="deleteProduct/${product.id}" class="style">Delete</a></td>		     
			</sec:authorize>
			
		</tr>
	</c:forEach>
</table>
<br><br><br>
<%@ include file="footer.jsp" %>
</body>
</html>