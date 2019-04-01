<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>

<head><title>LoginForm</title> 
<link rel="stylesheet" href="css//login.css"/> 
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
    </head>
<body style="background-image:url('images//login.jpg')">
<a href="HomePage.jsp" style="float:right;text-decoration:none;">&#10006;</a>

<div class="login-page">
<%--
 <%
	Object msg=request.getAttribute("errorMsg");
   if(msg!=null){
	   %>
	   		<div class="alert alert-danger">
	   			Email or Password is incorrect...
	   		</div>
	   <%
   }
 %>	
  --%>
      <%  
      Object msg=request.getAttribute("errorMsg");
      if(msg=="successful"){%>
	  
	   <div class="alert alert-success">
	   			registered successfully...Now u can login
	   		</div>
	   		 <%
   }
  
 %>
      <%    if(msg=="login fail"){%>
	  
	   <div class="alert alert-danger">
	   			Email or Password is incorrect
	   		</div>
	   		 <%
   }
  
 %>
<%--<c:if test="${not empty errorMsg}">
	<div class="alert alert-danger">
		${errorMsg}
	</div>
</c:if> --%> 	
  <div class="form">
    <form class="login-form" action="login" method="post" >
      <input type="text" class="form-control" id="email" placeholder="Enter email" name="email"/>
      <input type="password" class="form-control" id="pwd" placeholder="Enter password" name="pwd"/>
	  <button type="submit" class="btn btn-default">login</button>
      <p class="message">Not registered? <a href="CustomerRegister.jsp">Create an account</a></p>
    </form>
  </div>
</div>
</body>
</html>

