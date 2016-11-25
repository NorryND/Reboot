<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
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



</style>

<body>
<%@ include file="jumbotron.jsp" %>
 <%@ include file="header.jsp" %>
<table align="center">
  <tr>
    <th>Cart ID</th>
    <th>Product ID</th>
    <th>Product Name</th>
    <th>Product Prrice</th>
    
    <th>Quantity</th>
  </tr>
  
		<tr>
			
			<td>${cart.id}</td>
			<td>${cart.pid}</td>
		    <td>${cart.pname}</td>
		    <td>${cart.pprice}</td>
			<td>
			<input type="number" name="quantity" min="1" max="1000">
			<td><a href="${pageContext.request.contextPath}/deleteCart/${cart.id}" class="style">Delete</a></td>
			</td>
			
			
		</tr>
  
  
</table>
<a href="Order" class="style">Order</a>
<a href="${pageContext.request.contextPath}/getAllProduct" class="style">Continue Shopping</a>
<br><br><br>
<%@ include file="footer.jsp" %>
</body>
</html>