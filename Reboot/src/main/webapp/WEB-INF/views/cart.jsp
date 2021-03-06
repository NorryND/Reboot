<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Cart</title>
</head>

<style>
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
<table align="center" class="table">
  <tr>
    <th>Cart ID</th>
    <th>Product ID</th>
    <th>Product Name</th>
    <th>Price</th> 
    <th>Stock</th>   
    <th>Quantity</th>
    <th>Total</th>
    <th>Product Left</th>
    <th colspan="4">User name</th>
  </tr>
  
      <c:forEach items="${cart}" var="cart">
		<tr>
			
			<td>${cart.cid}</td>
			<td>${cart.pid}</td>
		    <td>${cart.pname}</td>
		    <td>${cart.pprice}</td>
		    <td >${cart.pstock}</td>	
		        
			<td>
			          <form action="updateCart" method="get">
			             <input type="hidden" name="pstock" value="${cart.pstock}">
			             <input type="hidden" name="pid" value="${cart.pid}">
			             <input type="hidden" name="cid" value="${cart.cid}">
			             <input type="hidden" name="name" value="${username}">
			             <input type="text" name="quantity"value="${cart.quantity}" pattern="[1-9]{1}" title="Enter Quantity">
			             <input type="submit" value="Update">
			          </form>
			</td>
			<td>${cart.pprice*cart.quantity}</td>
			<td>${cart.pstock-cart.quantity}</td>
	
			<td colspan="3">${cart.uid}</td>
			<td><a href="${pageContext.request.contextPath}/deleteCart?id=${cart.cid}&name=${cart.uid}&stock=${cart.pstock-cart.quantity}&quantity=${cart.quantity}&pid=${cart.pid}" class="style">Delete</a></td>
	
			
		</tr>
       </c:forEach>
       <tr>
		<td> </td><td> </td><td> </td><td> </td><td> </td><td> </td><td> </td>
		<td>Amount payable</td>
		<td>${Total}</td>
	<tr>
  
</table>
<div align="center">
<a href="Order" class="style">Order</a>
<a href="${pageContext.request.contextPath}/getAllProduct" class="style">Continue Shopping</a>
</div>
<br><br><br>
<%@ include file="footer.jsp" %>
</body>
</html>