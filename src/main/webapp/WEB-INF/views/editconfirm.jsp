<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Order</title>
</head>
<style>
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

<body>
<%@ include file="jumbotron.jsp" %>
 <%@ include file="header.jsp" %>
<form:form modelAttribute="billing">
		<table align="center">
		<tr>
			
			<td><form:hidden path="id"/></td>
		</tr>
		<tr>
			<td><form:label path="name">Name</form:label></td>
			<td>${billing.name}</td>
		</tr>
		<tr>
			<td><form:label path="address">Address</form:label></td>
			<td>${billing.address}</td>
		</tr>
		
		<tr>
			<td><form:label path="city">City</form:label></td>
			<td>${billing.city}</td>
		</tr>
		
		<tr>
			<td><form:label path="contact">Contact</form:label></td>
			<td>${billing.contact}</td>
		</tr>
			
			
			<tr>
			    <td><input name="_eventId_edit" type="submit" value="Edit"></td>
				<td><input name="_eventId_confirm" type="submit" value="Confirm Details"></td>
			</tr>
			
		</table>
	</form:form>
<%@ include file="footer.jsp" %>
</body>
</html>