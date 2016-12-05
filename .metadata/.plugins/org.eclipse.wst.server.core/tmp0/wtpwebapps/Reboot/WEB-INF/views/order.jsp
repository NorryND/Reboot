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
    table{
    width: 40%;
    }
    
    tr, td {
    height: 50px;
    padding: 15px;
    text-align: left;
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

input.style:link, input.style:visited {
    background-color: graytext;
    color: white;
    padding: 8px 16px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
}


input.style:hover, input.style:active {
    background-color: green;
}

body {
  background-image: url("<c:url value="/images/img12.jpg"/>");
  background-position: center center;
  background-repeat: no-repeat;
  background-attachment: fixed;
  background-size: cover;
  background-color: #464646;
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
			<td><form:label path="name">Recipient Name</form:label></td>
			<td><form:input path="name" pattern="[A-Za-z]+" title="Enter Name" required="true"/></td>
		</tr>
		<tr>
			<td><form:label path="address">Recipient Address</form:label></td>
			<td><form:textarea path="address" title="Enter Address" required="true"/></td>
		</tr>
		
		<tr>
			<td><form:label path="city">Recipient City</form:label></td>
			<td><form:input path="city" pattern="[A-Za-z]+" title="Enter City" required="true"/></td>
		</tr>
		
		<tr>
			<td><form:label path="contact">Contact</form:label></td>
			<td><form:input path="contact" pattern="[0-9]{10}" title="Enter Contact" required="true"/></td>
		</tr>
			
			
			<tr>
			    <td><a href="getAllCart?name=${username}" class="style">Back</a></td>
				<td><input name="_eventId_submit" type="submit" class="style" value="Order"></td>
			</tr>
			
		</table>
	</form:form><br><br><br>
	<%@ include file="footer.jsp" %>
</body>
</html>