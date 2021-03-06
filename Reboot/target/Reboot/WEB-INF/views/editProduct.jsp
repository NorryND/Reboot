<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>


<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Edit Product</title>
</head>
<style>
body {
  background-image: url("<c:url value="/images/img12.jpg"/>");
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
</style>

<body style="background-color: #8a8a5c">
<%@ include file="jumbotron.jsp" %>
 <%@ include file="header.jsp" %>
	<h2 align="center">EDIT Product</h2>
	  <div style="color:red">
                <h2 id="banner"> ${uperror}</h2>
                <h2 id="banner"> ${psuccess}</h2>
                <h2 id="banner"> ${perror}</h2>
                </div>

	<form:form action="${pageContext.request.contextPath}/updateProduct" method="post"
	   modelAttribute="product" enctype="multipart/form-data">
		<table align="center">
		    <tr>
				
				<td><form:hidden path="id" /></td>
			</tr>
			<tr>
				<td><form:label path="name">Product Name</form:label></td>
				<td><form:input path="name" cssStyle="width:160%"/></td>
			</tr>
			<tr>
				<td><form:label path="description">Product Description</form:label></td>
				<td><form:textarea path="description" cssStyle="width:160%"/></td>
			</tr>
			
			<tr>
				<td><form:label path="category">Category</form:label></td>
			       <td>
                     <form:select path="category">
                         <form:option value="Select a Category" cssStyle="width:160%"></form:option>
                         <form:option value="Casual">Casual</form:option>
                          <form:option value="Sports">Sports</form:option>
                          <form:option  value="Formal">Formal</form:option>                   
                     </form:select> 
                  </td>
			</tr>
			
			<tr>
				<td><form:label path="stock">Product Stock</form:label></td>
				<td><form:input path="stock" cssStyle="width:160%"/></td>
			</tr>
			<tr>
				<td><form:label path="cost">Product Cost</form:label></td>
				<td><form:input path="cost" cssStyle="width:160%"/></td>
			</tr>
			
			<tr>
				<td><form:label path="file"><b>Image to upload</b></form:label></td>
				<td> <form:input type="file" path="file" cssStyle="width:160%"/> </td>
			
				
        	</tr>

			<tr>
				<td><input type="submit" value="Update">
			</tr>
			
		</table>

	</form:form>
	<br><br><br>
<%@ include file="footer.jsp" %>

</body>
</html>