<jsp:include page="CustomerHeader.jsp"/>

<div>

 <%  
      Object msg=request.getAttribute("errorMsg");
      if(msg=="fail"){%>
	  
	   <div class="alert alert-danger">
	   			Password Not Updated Successfully.Plz Try Again...
	   		</div>
	   		 <%
   }
  
 %>
      <%    if(msg=="fail1"){%>
	  
	   <div class="alert alert-danger">
	   			New Password And Confirm Password does'nt Match....
	   		</div>
	   		 <%
   }
  
 %>

<div form style="margin-top:210px;margin-left:350px;">
 <form class="form-horizontal" action="ChangePasswordController" method="post">

      <div class="form-group">
    <label class="control-label col-sm-2" for="email">Old Password:</label>
    <div class="col-sm-4">
    <input type="password" class="form-control" id="password" name="password" >
    </div>
  </div>
	
   

    <div class="form-group">
    <label class="control-label col-sm-2" for="newpassword">New Password:</label>
    <div class="col-sm-4">
    <input type="password" class="form-control" id="newpassword" name="newpassword" >
    </div>
  </div>
	
	<br>
    <div class="form-group">
    <label class="control-label col-sm-2" for="confirmpassword">Confirm Password:</label>
    <div class="col-sm-4">
    <input type="password" class="form-control" id="confirmpassword" name="confirmpassword" >
    </div>
  </div>
      <input type="submit" class="btn btn-default" style="margin-left:250px;margin-top:30px;" value="submit">
    
	



</form>
</div>
</div>