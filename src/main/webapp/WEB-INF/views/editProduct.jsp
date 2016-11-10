<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>


<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Product</title>
</head>
<body style="background-color: #8a8a5c">
 <%@ include file="header.jsp" %>
	<h2>EDIT Product</h2>

	<form:form action="${pageContext.request.contextPath}/updateProduct" method="post" modelAttribute="product">
		<table>
		    <tr>
				
				<td><form:hidden path="id" /></td>
			</tr>
			<tr>
				<td><form:label path="name">Product Name</form:label></td>
				<td><form:input path="name" /></td>
			</tr>
			<tr>
				<td><form:label path="description">Product Description</form:label></td>
				<td><form:input path="description" /></td>
			</tr>
			
			<tr>
				<td><form:label path="stock">Product Stock</form:label></td>
				<td><form:input path="stock" /></td>
			</tr>
			<tr>
				<td><form:label path="cost">Product Cost</form:label></td>
				<td><form:input path="cost" /></td>
			</tr>

			<tr>
				<td><input type="submit" value="Update">
			</tr>
			
		</table>

	</form:form>
	<br>
<%@ include file="footer.jsp" %>

</body>
</html>