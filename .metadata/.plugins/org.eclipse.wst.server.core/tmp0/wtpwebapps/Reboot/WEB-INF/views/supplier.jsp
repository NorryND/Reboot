<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>


<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Product</title>
</head>
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
<body style="background-color: #8a8a5c">
<%@ include file="jumbotron.jsp" %>
 <%@ include file="header.jsp" %>
	<h2>ADD Supplier</h2>

	<form:form action="${pageContext.request.contextPath}/addSupplier" method="post" modelAttribute="supplier">
		<table align="center">
			<tr>
				<td><form:label path="name">Supplier Name</form:label></td>
				<td><form:input path="name" /></td>
			</tr>
			<tr>
				<td><form:label path="contact">Supplier Contact</form:label></td>
				<td><form:input path="contact" /></td>
			</tr>
			
			<tr>
				<td><form:label path="address">Supplier Address</form:label></td>
				<td><form:textarea path="address" /></td>
			</tr>

			<tr>
				<td><input type="submit" value="Add">
			</tr>
			
		</table>

	</form:form>
	<br><br><br>

<%@ include file="footer.jsp" %>
</body>
</html>