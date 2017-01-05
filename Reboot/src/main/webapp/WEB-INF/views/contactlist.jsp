<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd"> 
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>List of Contact</title>
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

table {
    border-collapse: collapse;
    width: 50%;
}

 tr, td {
    height: 50px;
    padding: 15px;
    text-align: center;
}

th, td {
    padding: 15px;
    text-align: center;
    border-bottom: 1px solid black;
}

tr:hover{background-color:buttonshadow;}

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

input[type=text] {
    align :center;
    width: 50%;
    padding: 12px 20px;
    margin: 8px 0;
    box-sizing: border-box;
}
</style>
<body background="<c:url value="/images/img12.jpg"/>">
<%@ include file="jumbotron.jsp" %>
 <%@ include file="header.jsp" %>
 <br><br><br>
<h4 align="center">Queries</h4>
<p>${message} </p>


<table width="50%" align="center">
	<tr>
	    
		<th align="left">Id</th>
		<th align="left">Name</th>
		<th align="left">Email</th>
		<th align="left">Phone No</th>
		<th align="left">Message</th>
		<th align="center">Settings</th>
		
		
		
	</tr>
	<c:forEach items="${contactlist}" var="contact">
		<tr>
			
			<td>${contact.id}</td>
			<td>${contact.name}</td>
			<td>${contact.email}</td>
			<td align="left">${contact.phone}</td>
			<td>${contact.message}</td>
			<td><a href="detail/${contact.id}" class="style">Details</a></td>

		    <td><a href="deleteContact/${contact.id}" class="style">Delete</a></td>		     
			
		</tr>
	</c:forEach>
</table>
<br><br><br>
<%@ include file="footer.jsp" %>
</body>
</html>