<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Order</title>
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
			<td><b>${billing.name}</b></td>
		</tr>
		<tr>
			<td><form:label path="address">Address</form:label></td>
			<td><b>${billing.address}</b></td>
		</tr>
		
		<tr>
			<td><form:label path="city">City</form:label></td>
			<td><b>${billing.city}</b></td>
		</tr>
		
		<tr>
			<td><form:label path="contact">Contact</form:label></td>
			<td><b>${billing.contact}</b></td>
		</tr>
			
			
			<tr>
			    <td><input name="_eventId_edit" type="submit" value="Edit"></td>
				<td><input name="_eventId_confirm" type="submit" value="Confirm Details"></td>
			</tr>
			
		</table>
	</form:form>
	<br><br><br><br>
<%@ include file="footer.jsp" %>
</body>
</html>