<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>


<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Edit Supplier</title>
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
	<h2 align="center">EDIT Supplier</h2>

	<form:form action="${pageContext.request.contextPath}/updateSupplier" method="post" modelAttribute="supplier">
		<table align="center">
		    <tr>
				
				<td><form:hidden path="id" /></td>
			</tr>
		
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
				<td><form:input path="address" /></td>
			</tr>
	
			<tr>
				<td><input type="submit" value="Update">
			</tr>
			
		</table>

	</form:form>
	<br><br><br>
<%@ include file="footer.jsp" %>

</body>
</html>