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
<body style="background-color: #8a8a5c">
 <%@ include file="header.jsp" %>

<form:form action="${pageContext.request.contextPath}/getAllProduct" method="post" modelAttribute="product">
		<table>
		    <tr>
				
				<td><form:hidden path="id" /></td>
			</tr>
			
			<tr>				
				<td><img src="${pageContext.request.contextPath}/upload/${product.name}.jpg"/></td>
			</tr>
			
			<tr>
				<td><form:label path="name">Product Name</form:label></td>
				
				<td>${product.name}</td>
			</tr>
			<tr>
				<td><form:label path="description">Product Description</form:label></td>
				
				<td> ${product.description}</td>
			</tr>
			
			<tr>
				<td><form:label path="stock">Product Stock</form:label></td>
				
				<td>${product.stock}</td>
			</tr>
			<tr>
				<td><form:label path="cost">Product Cost</form:label></td>
				
				<td>${product.cost}</td>
			</tr>

			<tr>
				<td><input type="submit" value="Back">
			</tr>
			
		</table>

	</form:form>
<%@ include file="footer.jsp" %>
</body>
</html>