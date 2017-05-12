<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ include file="/WEB-INF/views/template/header.jsp" %>
<html>
<head><title>DSLR'S</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style>

    .jumbotron {
      background-color: black;
         color: white;
}
   
    .navbar {
      margin-bottom: 0;
      border-radius: 0;
    }
    
    
    footer {
      background-color: black;
      color: white;
      padding: 25px;
    }
    
  .carousel-inner img {
      width: 100%; 
      margin: auto;
      min-height:50px;
  }

 
  @media (max-width: 600px) {
    .carousel-caption {
      display: none; 
    }
  }
  </style>

</head>
<body>
<div class="jumbotron">
  <div class="container text-center">
    <h1>Digital SLR'S</h1>      
      </div>

<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="#">DS</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li class="active"><a href="#">Home</a></li>
<li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Products <span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="#">Nikon Cameras</a></li>
          <li><a href="#">Canon Cameras</a></li>
          </ul>
      </li>
          <li><a href="#">About Us</a></li>
        <li><a href="#">Contact Us</a></li>
      </ul>
         <ul class="nav navbar-nav navbar-right">
<li><a href="#"><span class="glyphicon glyphicon-shopping-cart"></span> Cart</a></li>
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <li><a href="#"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
      </ul>
    </div>
  </div>
</nav>

<div id="myCarousel" class="carousel slide" data-ride="carousel">
    
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
    </ol>

    
    <div class="carousel-inner" role="listbox">
      <div class="item active">
        <img src="file:///C:/Users/Siddhesh%20Modak/Downloads/nikon-d5-4096x2733-camera-dslr-digital-review-body-4k-video-lens-8743.jpg" alt="Image">
        <div class="carousel-caption">
          <h3>Sell $</h3>
          <p>Money Money.</p>
        </div>      
      </div>

      <div class="item">
        <img src="file:///C:/Users/Siddhesh%20Modak/Downloads/327fcd0d8d6cda17126301576776a461.jpg" alt="Image">
        <div class="carousel-caption">
          <h3>More Sell $</h3>
          <p>Lorem ipsum...</p>
        </div>      
      </div>
    </div>

    
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
</div>
  
<div class="container text-center">    
  <h3>What We Sell--</h3><br>
  <div class="row">
    <div class="col-sm-6">
      <img src="file:///C:/Users/Siddhesh%20Modak/Downloads/39f254018f4761b93a300857962efe26.jpg" class="img-responsive" style="width:100%" alt="Image">
      <p><b>NIKON CAMERA'S</b></p>
    </div>
    <div class="col-sm-6"> 
      <img src="file:///C:/Users/Siddhesh%20Modak/Downloads/canon-rebates.jpg" class="img-responsive" style="width:100%" alt="Image">
      <p><b>CANON CAMERA'S</b></p>    
    </div>
     </div>
  </div>
</div></div>

<footer class="container-fluid text-center">
  <p>Footer Text</p>
</footer>

</body>
</html>        
<%@ include file="/WEB-INF/views/template/footer.jsp" %>
