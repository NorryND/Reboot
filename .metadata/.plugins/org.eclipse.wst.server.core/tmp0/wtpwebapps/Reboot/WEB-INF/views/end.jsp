<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Thank You For Shopping</title>
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
 <br><br><br>
<div align="center">
<h1 style="font-size:300%;">Product will be delivered shortly... THANK YOU for Shopping</h1>
<a href="${pageContext.request.contextPath}/getAllProduct" class="style">Back</a>
</div>
<br><br><br>
<%@ include file="footer.jsp" %>
</body>
</html>