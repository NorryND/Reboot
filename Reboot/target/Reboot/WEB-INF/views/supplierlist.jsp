<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd"> 

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Suppliers</title>
</head>

<style>
table {
    border-collapse: collapse;
    width: 50%;
}

 tr, td {
    height: 50px;
    padding: 15px;
    text-align: left;
}

th, td {
    padding: 8px;
    text-align: left;
    border-bottom: 1px solid black;
}

tr:hover{background-color:buttonhighlight;}

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
}

</style>

<body style="background-color: #8a8a5c">
<%@ include file="jumbotron.jsp" %>
 <%@ include file="header.jsp" %>
<h4>List of available Suppliers</h4>
<p>${message} </p>


<table align="center">
	<tr>
	    
		<th align="left">Id</th>
		<th align="left">Name</th>
		<th align="left">Contact</th>
		<th align="left">Address</th>
		<th colspan="3" align="center">Settings</th>
		
		
	</tr>
	<c:forEach items="${supplierlist}" var="supplier">
		<tr>
			
			<td>${supplier.id}</td>
			<td>${supplier.name}</td>
			<td>${supplier.contact}</td>
			<td align="left">${supplier.address}</td>

			<td><a href="editSupplier/${supplier.id }" class="style">Edit</a></td>
		    <td><a href="deleteSupplier/${supplier.id}" class="style">Delete</a></td>
			
			
		</tr>
	</c:forEach>
</table>
<br><br><br>
<%@ include file="footer.jsp" %>
</body>
</html>