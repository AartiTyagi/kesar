<jsp:include page="CustomerHeader.jsp"/>
<div>
 <%  
      Object msg=request.getAttribute("errorMsg");
      if(msg=="fail"){%>
	  
	   <div class="alert alert-success">
	   			Your Profile Updated Successfully....
	   		</div>
	   		 <%
   }
  
 %>

  <div class="form" style="margin-top:80px;">
    
    <form class="form-horizontal" action="UpdateCustomerController" method="post">
	  
	    <div class="form-group">
    <label class="control-label col-sm-2" for="yourname">YourName:</label>
    <div class="col-sm-10">
    <input type="text" class="form-control" id="yourname" name="yourname" value="${sessionScope.user.name}">
    </div>
  </div>
	   <div class="form-group">
    <label class="control-label col-sm-2" for="phone">MobileNo:</label>
    <div class="col-sm-10">
    <input type="text" class="form-control" id="phone" name="mobileno" value="${sessionScope.user.mobileNo}">
    </div>
  </div>    <div class="form-group">
    <label class="control-label col-sm-2" for="email">Email address:</label>
    <div class="col-sm-10">
    <input type="email" class="form-control" id="email" name="email" value="${sessionScope.user.email}" readonly="readonly">
    </div>
  </div>
	     <div class="form-group">
    <label class="control-label col-sm-2" for="pincode">PinCode:</label>
    <div class="col-sm-10">
    <input type="text" class="form-control" id="pincode" name="pincode" value="${sessionScope.user.pinCode}">
    </div>
  </div>
	     <div class="form-group">
    <label class="control-label col-sm-2" for="address">Address:</label>
    <div class="col-sm-10">
    <input type="text" class="form-control" id="address" name="address" value="${sessionScope.user.address}">
    </div>
  </div>	  <div class="form-group">
    <label class="control-label col-sm-2" for="city">City:</label>
    <div class="col-sm-10">
    <input type="text" class="form-control" id="city" name="city" value="${sessionScope.user.city}">
    </div>
  </div>	     <div class="form-group">
    <label class="control-label col-sm-2" for="state">State:</label>
    <div class="col-sm-10">
    <input type="text" class="form-control" id="state" name="state" value="${sessionScope.user.state}" >
    </div>
  </div>
  
  
      <button type="submit" class="btn btn-default" style="margin-left:700px;">Update</button>
    
     </form>
  </div>
  </div>


<br><br>
<jsp:include page="Footer.jsp"/>	
