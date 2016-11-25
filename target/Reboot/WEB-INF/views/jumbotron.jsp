
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<html>
<style>
 
 img.final{
 display: block;
    margin-left: auto;
    margin-right: auto; 
    float: left;
 }
</style>
<body>



<div class="jumbotron">  
  <div class="container text-center">
  <img class="final" src=<c:url value="/images/img11.png"/> width="11%" height="20%"/>
    <h1><i>REBOOT</i></h1>      
    <p><i>Money, Pay, Boot</i></p>
    <p align="right">
       <sec:authorize access="isAuthenticated()">
             Welcome <sec:authentication property="principal.username" /> 
      </sec:authorize>
      </p>
  </div>
</div>

</body>
</html>