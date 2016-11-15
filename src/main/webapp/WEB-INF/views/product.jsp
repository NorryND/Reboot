<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>


<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Product</title>
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

</style>
<body style="background-color: #8a8a5c">
<%@ include file="jumbotron.jsp" %>
 <%@ include file="header.jsp" %>
	<h2>ADD Product</h2>

	<form:form action="${pageContext.request.contextPath}/addProduct" 
	                       method="post" modelAttribute="product" enctype="multipart/form-data">
		<table align="center">
			<tr>
				<td><form:label path="name">Product Name</form:label></td>
				<td><form:input path="name" cssStyle="width:60%" /></td>
			</tr>
			<tr>
			   
				<td><form:label path="description">Product Description</form:label></td>
				<td><form:textarea path="description" cssStyle="width:60%"/>
			</tr>
<!-- 			<tr> -->
<%-- 			       <td><form:label path="category">Category</form:label></td> --%>
<!-- 			       <td> -->
<%--                       <form:select path="category"> --%>
<%--                       <form:option value="Select" label="Select a Category" /> --%>
<%--                       <form:option value="Casual" label="Casual" /> --%>
<%--                       <form:option value="Formal" label="Formal" /> --%>
<%--                       <form:option value="Sports" label="Sports" /> --%>
<%--                       </form:select> --%>
<!--             </td> -->
<!-- 			</tr> -->
			<tr>
				<td><form:label path="stock">Product Stock</form:label></td>
				<td><form:input path="stock" cssStyle="width:60%" /></td>
			</tr>
			<tr>
				<td><form:label path="cost">Product Cost</form:label></td>
				<td><form:input path="cost" cssStyle="width:60%"/></td>
			</tr>
			<tr>
				<td><form:label path="file">Image to upload</form:label></td>
				<td> <form:input type="file" path="file" cssStyle="width:60%"/> </td>
			
				
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