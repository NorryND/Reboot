<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>


<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Product</title>
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
    padding: 15px;
    text-align: left;
}

</style>

<body>
<%@ include file="jumbotron.jsp" %>
 <%@ include file="header.jsp" %>
	<h2 align="center">ADD Supplier</h2>

	<form:form action="${pageContext.request.contextPath}/addSupplier" method="post" modelAttribute="supplier">
		<table align="center">
			<tr>
				<td><form:label path="name"><b>Supplier Name</b></form:label></td>
				<td><form:input path="name" /></td>
				<td><form:errors path="name" cssStyle="color: #ff0000" cssClass="control-errors col-sm-12"></form:errors></td>
			</tr>
			<tr>
				<td><form:label path="contact"><b>Supplier Contact</b></form:label></td>
				<td><form:input path="contact" /></td>
				<td><form:errors path="contact" cssStyle="color: #ff0000" cssClass="control-errors col-sm-12"></form:errors></td>
			</tr>
			
			<tr>
				<td><form:label path="address"><b>Supplier Address</b></form:label></td>
				<td><form:textarea path="address" /></td>
				<td><form:errors path="address" cssStyle="color: #ff0000" cssClass="control-errors col-sm-12"></form:errors></td>
			</tr>

			<tr>
			    <td></td>
				<td><input type="submit" value="Add">
			</tr>
			
		</table>

	</form:form>
	<br><br><br>

<%@ include file="footer.jsp" %>
</body>
</html>