<jsp:include page="CustomerHeader.jsp"/>
<div>
 <%  
      Object msg=request.getAttribute("errorMsg");
      if(msg=="success"){%>
	  
	   <div class="alert alert-success">
	   			Password  Updated Successfully....
	   		</div>
	   		 <%
   }
  
 %>

<div class="container" style="height:800px;background-color:grey;padding-top:400px;text-align:center">
	<h1>Welcome to AutoMobiles SpareParts Shopping Portal</h1>
</div>
</div>

<p/>
</body>
</html>