<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd"> 
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Contact Details</title>
</head>
<style>
  table{
      
    width: 40%;
    }
    
    tr, td {
    height: 50px;
    padding: 100px;
    text-align: left;
    margin-left: 2cm;
    }
    
body {
  background-image: url("<c:url value="/images/img13.jpg"/>");
  
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

<form:form action="${pageContext.request.contextPath}/getAllContact" method="post" modelAttribute="contact">
		<table>
		    <tr>
				
				<td><form:hidden path="id" /></td>
			</tr>
			<tr>
				<td><form:label path="name">Name</form:label></td>
				
				<td><b>${contact.name}</b></td>
			</tr>
			<tr>
				<td><form:label path="email">Email</form:label></td>
				
				<td> <b>${contact.email}</b></td>
			</tr>
			
			<tr>
				<td><form:label path="phone">Phone</form:label></td>
				
				<td><b>${contact.phone}</b></td>
			</tr>
			<tr>
				<td><form:label path="message">Message</form:label></td>
				
				<td><b>${contact.message}</b></td>
			</tr>

			<tr>
				<td><input type="submit" value="Back">
			</tr>
			
		</table>

	</form:form>
	<br><br><br>
<%@ include file="footer.jsp" %>
</body>
</html>