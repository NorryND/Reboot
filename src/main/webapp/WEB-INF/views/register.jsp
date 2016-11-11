<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="<c:url value="/css/register.css"/>">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>Register</title>

<body style="background-color: #8a8a5c">
	<%@ include file="header.jsp"%>
	<div style="color:red">
                <p>${requestScope.passerror}</p>  
            </div>

	<div class="imgcontainer">
		<img src="<c:url value="/images/img4.png"/>" alt="Avatar" class="avatar"><br>
	</div>
	 
    <br>
	<form:form action="${pageContext.request.contextPath}/addUser"
		method="post" modelAttribute="user">
		<table align="center">
			<tr>
				<td>
				  <form:label path="firstname" cssClass="control-label col-sm-3"><b>First Name</b></form:label> 
				  <form:input path="firstname" placeholder="Enter First Name" cssStyle="width:60%"/> <br>
				  <form:errors path="firstname" cssStyle="color: #ff0000" cssClass="control-errors col-sm-12"></form:errors>
				</td>
			</tr>
			
			<tr>
				<td>
				  <form:label path="lastname" cssClass="control-label col-sm-3"><b>Last Name</b></form:label> 
				  <form:input path="lastname" placeholder="Enter Last Name" cssStyle="width:60%"/> <br>
				  <form:errors path="lastname" cssStyle="color: #ff0000" cssClass="control-errors col-sm-12"></form:errors>
				</td>
			</tr>
			
			<tr>
				<td>
				  <form:label path="username" cssClass="control-label col-sm-3"><b>Username</b></form:label> 
				  <form:input path="username" placeholder="Enter Username" cssStyle="width:60%"/> <br>
				  <form:errors path="username" cssStyle="color: #ff0000" cssClass="control-errors col-sm-12"></form:errors>
				</td>
			</tr>
			
			<tr>
				<td>
				  <form:label path="password" cssClass="control-label col-sm-3"><b>Password</b></form:label> 
				  <form:password path="password" placeholder="Enter Password" cssStyle="width:60%"/> <br>
				  <form:errors path="password" cssStyle="color: #ff0000" cssClass="control-errors col-sm-12"></form:errors>
				</td>
			</tr>
			
			<tr>
				<td>
				  <form:label path="confirmpass" cssClass="control-label col-sm-3"><b>Confirm Password</b></form:label> 
				  <form:password path="confirmpass" placeholder="Confirm Password" cssStyle="width:60%"/> <br>
				  <form:errors path="confirmpass" cssStyle="color: #ff0000" cssClass="control-errors col-sm-12"></form:errors>
				  <br>
				</td>
			</tr>
           
        
			<tr>
			    <td>
			       <form:button value="submit" class="register" >Register</form:button>
			     </td>
			
			</tr>
            
	</table>
	<br><br><br><br>

	</form:form>
	<%@ include file="footer.jsp" %>
</body>
</html>
