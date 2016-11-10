<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="<c:url value="/css/register.css"/>">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>Login</title>

<body style="background-color: #8a8a5c">
<%@ include file="header.jsp" %>



<form:form action="${pageContext.request.contextPath}/addUser" method="post" modelAttribute="user">
  <div class="imgcontainer">
    <img src="<c:url value="/images/img4.png"/>" alt="Avatar" class="avatar"><br>
   </div>
   <div align="center">
    <label><b>First Name</b></label>
    <input type="text" placeholder="Enter First Name" name="firstname" required><br>
    
    <label><b>Last Name</b></label>
    <input type="text" placeholder="Enter Last Name" name="lastname" required><br>
    
    <label><b>Username</b></label>
    <input type="text" placeholder="Enter Username" name="username" required><br>

    <label><b>Password</b></label>
    <input type="password" placeholder="New Password" name="password" required><br>
        
    <button type="submit">Register</button><br>
    <button type="button" class="cancelbtn">Cancel</button><br>
    
    <%@ include file="footer.jsp" %>
    </div>
     <br><br>
   
  
 
 </form:form>
 </body>
</html>
