
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="<c:url value="/css/home.css"/>">


<title>Welcome</title>

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
</style>

<body>

<%@ include file="jumbotron.jsp" %>

<%@ include file="header.jsp" %>

<h2 id="banner"> ${successMessage}</h2>
<h2 id="banner"> ${success}</h2>
<h2 id="banner"> ${successlogout}</h2>

    <!-- Carousel
    ================================================== -->
<div class="container">
  <br>
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">

      <div class="item active">
        <img src="<c:url value="/images/img.jpg"/>"  alt="Chania" width="460" height="345">
        <div class="carousel-caption">
          <h3>Adidas</h3>
          <p>All Day I Dream About Sneakers.</p>
        </div>
      </div>

      <div class="item">
        <img src="<c:url value="/images/img2.jpg"/>"  alt="Chania" width="460" height="345">
        <div class="carousel-caption">
          <h3>Nike</h3>
          <p>It is right to buy it  Just do it.</p>
        </div>
      </div>
    
      <div class="item">
        <img src="<c:url value="/images/img3.jpg"/>" alt="Chania" width="460" height="345">
        <div class="carousel-caption">
          <h3>Reebok</h3>
          <p> I just want to play the game, drink Pepsi, wear Reebok.</p>
        </div>
      </div>
       
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div>
    

 <br>
<h2><marquee>Latest Offers</marquee></h2>  <br>  
<div class="container">    
  <div class="row">
    <div class="col-sm-4">
      <div class="panel panel-danger">
        <div class="panel-body">
        <a href="${pageContext.request.contextPath}/details?id=1">
               <img src="<c:url value="/images/img5.jpg"/>" 
               class="img-responsive" style="width:100%" alt="Image"
               onmouseover="this.src='<c:url value="/images/img5.1.jpg"/>';"
               onmouseout="this.src='<c:url value="/images/img5.jpg"/>';">
        </a>
        </div>
        <div class="panel-footer">Hi-Attitude Men Blue Casual Shoes</div>
      </div>
    </div>
    <div class="col-sm-4"> 
      <div class="panel panel-danger">
        <div class="panel-body">
        <a href="${pageContext.request.contextPath}/details?id=2">
               <img src="<c:url value="/images/img6.jpg"/>" 
               class="img-responsive" style="width:100%" alt="Image"
               onmouseover="this.src='<c:url value="/images/img6.1.jpg"/>';"
               onmouseout="this.src='<c:url value="/images/img6.jpg"/>';">
        </a>
        </div>
        <div class="panel-footer">Mancini Men Tan Oxford Shoes</div>
      </div>
    </div>
    <div class="col-sm-4"> 
     <div class="panel panel-danger">
        <div class="panel-body">
        <a href="${pageContext.request.contextPath}/details?id=3">
               <img src="<c:url value="/images/img7.jpg"/>" 
               class="img-responsive" style="width:100%" alt="Image"
               onmouseover="this.src='<c:url value="/images/img7.1.jpg"/>';"
               onmouseout="this.src='<c:url value="/images/img7.jpg"/>';">
        </a>
        </div>
        <div class="panel-footer">Lotto ZH Grav VI 700 TX Men Black Soccer Shoes</div>
      </div>
    </div>
  </div>
</div><br>

<div class="container">    
  <div class="row">
    <div class="col-sm-4">
      <div class="panel panel-danger">
      <div class="panel-body">
        <a href="${pageContext.request.contextPath}/details?id=33">
               <img src="<c:url value="/images/img8.jpg"/>" 
               class="img-responsive" style="width:100%" alt="Image"
               onmouseover="this.src='<c:url value="/images/img8.1.jpg"/>';"
               onmouseout="this.src='<c:url value="/images/img8.jpg"/>';">
        </a>
      </div>
      <div class="panel-footer">Woodland Men Tan Casual Shoes</div>
    </div>
    </div>
    <div class="col-sm-4"> 
      <div class="panel panel-danger">
      <div class="panel-body">
         <a href="${pageContext.request.contextPath}/details?id=34">
               <img src="<c:url value="/images/img9.jpg"/>" 
               class="img-responsive" style="width:100%" alt="Image"
               onmouseover="this.src='<c:url value="/images/img9.1.jpg"/>';"
               onmouseout="this.src='<c:url value="/images/img9.jpg"/>';">
        </a>
      </div>
      <div class="panel-footer">Buckaroo Men Maroon Casual Shoes</div>
    </div>
    </div>
    <div class="col-sm-4"> 
      <div class="panel panel-danger">
      <div class="panel-body">
         <a href="${pageContext.request.contextPath}/details?id=35">
               <img src="<c:url value="/images/img10.jpg"/>" 
               class="img-responsive" style="width:100%" alt="Image"
               onmouseover="this.src='<c:url value="/images/img10.1.jpg"/>';"
               onmouseout="this.src='<c:url value="/images/img10.jpg"/>';">
        </a>
      </div>
      <div class="panel-footer">Mancini Men Black Slip on Shoes</div>
    </div>
  </div>
  </div>
  </div><br><br><br>

  
    <%@ include file="footer.jsp" %>

</body>
</html>