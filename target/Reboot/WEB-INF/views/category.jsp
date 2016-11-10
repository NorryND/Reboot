<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>


<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Category</title>
</head>
<body style="background-color: #8a8a5c">
<%@ include file="header.jsp" %>
	<h2>Category</h2>
   <a href="getAllCategory">List</a><br>

	<form:form action="${pageContext.request.contextPath}/addCategory" method="post" modelAttribute="category">
		<table align="center">
			<tr>
				<td><form:label path="name">Category Name</form:label></td>
				<td><form:input path="name" /></td>
			</tr>
			
			<tr>
				<td><input type="submit" value="Add">
			</tr>
			
		</table>

	</form:form>

<%@ include file="footer.jsp" %>
</body>
</html>