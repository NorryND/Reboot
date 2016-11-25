
<html>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style>.navbar-brand>
img {
   max-height: 100%;
   height: 100%;
   width: 100%;
   margin: 0 auto;
   object-fit: contain;
   }
   .navbar-inner {
   min-height: 40px;
}

.navbar .nav > li > a {
  float: none;
  **padding: 10px 15px 10px;**
  color: #777;
  text-decoration: none;
  text-shadow: 0 1px 0 #FFF;
}

.navbar .brand {
  display: block;
  float: left;
  **padding: 10px 20px 10px;**
  margin-left: -20px;
  font-size: 20px;
  font-weight: 200;
  color: #777;
  text-shadow: 0 1px 0 #FFF;
}
   </style>
<body>

<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand"><img class=img-responsive2 src="<c:url value="/images/img11.png"/>"></a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
      
        <li><a href="/Reboot">Home</a></li>
        <li><a href="${pageContext.request.contextPath}/AboutUs">About Us</a></li>
        <li><a href="${pageContext.request.contextPath}/Contact">Contact</a></li>
        <sec:authorize access="hasRole('ROLE_ADMIN')">
            <li><a href="${pageContext.request.contextPath}/getAllContact">View Queries</a></li> 
        </sec:authorize>  
        <li class="dropdown">
        <a class="dropdown-toggle" data-toggle="dropdown" href="#">Product
        <span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="${pageContext.request.contextPath}/getAllProduct">View Product</a></li>
          <sec:authorize access="hasRole('ROLE_ADMIN')">
          <li><a href="${pageContext.request.contextPath}/Product">Add Product</a></li>
          
          </sec:authorize>        
        </ul>
        </li>
        
        <sec:authorize access="hasRole('ROLE_ADMIN')">
        <li class="dropdown">
        <a class="dropdown-toggle" data-toggle="dropdown" href="#">Category
        <span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="${pageContext.request.contextPath}/getAllCategory">View Category</a></li>
          
          <li><a href="${pageContext.request.contextPath}/Category">Add Category</a></li>
          
           
        </ul>
        </li>

         <li class="dropdown">
        <a class="dropdown-toggle" data-toggle="dropdown" href="#">Supplier
        <span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="${pageContext.request.contextPath}/getAllSupplier">View Supplier</a></li>
          
          <li><a href="${pageContext.request.contextPath}/Supplier">Add Supplier</a></li>
          
           
        </ul>
        </li>
        
        </sec:authorize>
      
      </ul>              
      
      <ul class="nav navbar-nav navbar-right">
      
      <sec:authorize access="isAnonymous()">
       <li><a href="${pageContext.request.contextPath}/Register"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
        <li><a href="${pageContext.request.contextPath}/Login"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>   
      </sec:authorize>
        
      <sec:authorize access="isAuthenticated()">
      <li><a href="#">Your Account</a></li>
      <li><a href="${pageContext.request.contextPath}/Cart"><span class="glyphicon glyphicon-user"></span> My Cart</a></li>
      
      <li><a href="${pageContext.request.contextPath}/Logout"><span class="glyphicon glyphicon-log-in"></span> Log Out</a></li>
      
      </sec:authorize>
            
      </ul>
      
      
       
    </div>
  </div>
</nav>

</body>
</html>