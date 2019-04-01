<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head><title>Registration</title> 
<link rel="stylesheet" href="css//register.css"/> 
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>

    </head>
<body style="background-image:url('images//login.jpg')">
<a href="HomePage.jsp" style="float:right; text-decoration:none;">&#10006;</a>
<div class="login-page">
 <%
	Object msg=request.getAttribute("errorMsg");
   if(msg=="failed"){
	   %>
	   		<div class="alert alert-danger">
	   			problem in registering.Plz Try Again....
	   		</div>
	   <%
   }
   %>

  <div class="form">
    
    <form class="login-form" action="signup" method="post">
	  <label style="text-align:left"><h2>Create Account</h2></label><br>
	  <label><strong>Your Name</strong></label>
      <input type="text" name="yourname"required />
	  <label><strong>Mobile Number</strong></label>
	  <input type="text" id="phone" name="mobileno" placeholder="123-456-7890"
       pattern="[0-9]{10}"
       required>
	   <label><strong>Email</strong></label><br>
	   <input type="email" name="email" required">
	   <label><strong>Pincode</strong></label><br>
	   <input type="text" name="pincode" required placeholder="must be 6 digits"  pattern="[0-9]{6}">
	   <label><strong>Address</strong></label><br>
	    <input type="text" id="address" name="address" required placeholder="Flat/House No. Colony/Street No.">
		<label><strong>City</strong></label><br>
	   <input type="text" name="city">
	   <label><strong>State</strong></label><br>
	   <input type="text" name="state">
		<label><strong>Password</strong></label><br>
      <input type="password" name="password" required/>
      <button type="submit" class="btn btn-default"><strong>register</strong></button>
      <p class="message">Already have an Account? <a href="Login.jsp">Login</a></p>
    </form>
  </div>
</div>
</body>
</html>