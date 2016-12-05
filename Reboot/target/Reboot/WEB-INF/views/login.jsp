<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<html>

<link rel="stylesheet" href="<c:url value="/css/login.css"/>">

<title>Login</title>


<body background="<c:url value="/images/img12.jpg"/>">
<%@ include file="jumbotron.jsp" %>
<%@ include file="header.jsp" %>

        <c:if test="${not empty error}">
            <div style="color:red">
                <h1 id="banner">Unauthorized Access !!</h1>
                Your fake login attempt was bursted, dare again !!<br /> 
                Caused : ${sessionScope["SPRING_SECURITY_LAST_EXCEPTION"].message}
            </div>
        </c:if>	

<form action="<c:url value="j_spring_security_check"/>" method="post">  
<div class="edit">
    <img src="<c:url value="/images/img4.png"/>" alt="Avatar" class="avatar"><br>
    
    <label><b>Username</b></label>
    <input type="text" placeholder="Enter Username" name="j_username" required><br>

    <label><b>Password</b></label>
    <input type="password" placeholder="Enter Password" name="j_password" required><br>
        
    <button type="submit">Login</button><br>
    
    <button type="reset" class="cancelbtn">Cancel</button><br>
    
    <input type="checkbox"> Remember me
  <div class="container"> 
     
    <span class="psw">Forgot <a href="#">Password? &middot;</a></span>
    <a href="Register">New User?</a>
  </div>
   <br><br><br>
  
  <%@ include file="footer.jsp" %>
  
  
 </div>
 </form>
 </body>
</html>
