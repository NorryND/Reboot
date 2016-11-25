<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>About Us</title>
<style>
body {
  font-family: "Roboto", Helvetica, Arial, sans-serif;
  font-weight: 100;
  font-size: 12px;
  line-height: 30px;
  color: #777;
}

fieldset {
  border: medium none !important;
  margin: 0 0 10px;
  min-width: 100%;
  padding: 0;
  width: 100%;
}

.container {
  max-width: 400px;
  width: 100%;
  margin: 0 auto;
  position: relative;
}
</style>
</head>
<body style="background-color: #8a8a5c">
<%@ include file="jumbotron.jsp" %>
<%@ include file="header.jsp" %>

 <h2>Enjoyed Looking At Our Work? Don't hesitate to contact us! </h2>
<div class="container">  
  
  <form:form action="${pageContext.request.contextPath}/addContact" method="post" modelAttribute="contact">
        
    <fieldset>
    <hr>
      <label><b>Name</b></label><br>
      <input placeholder="Your name" name="name" type="text" tabindex="1" required autofocus>
    </fieldset>
    <fieldset>
      <label><b>Email Id</b></label><br>
      <input placeholder="Your Email Address" name="email" type="email" tabindex="2" required>
    </fieldset>
    <fieldset>
      <label><b>Phone No.</b></label><br>
      <input placeholder="Your Phone Number " name="phone" type="tel" tabindex="3" required>
    </fieldset>
    
    <fieldset>
      <label><b>Message</b></label><br>
      <textarea placeholder="Type your message here...." name="message" tabindex="5" required></textarea>
    </fieldset>
    <br>
    <fieldset>
      <button name="submit" type="submit">Submit</button>
    </fieldset>
   </form:form>
</div>
<br><br><br>
<%@ include file="footer.jsp" %>

</body>
</html>