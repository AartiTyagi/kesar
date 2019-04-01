<jsp:include page="CustomerHeader.jsp"/>
<div>
 <%  
      Object msg=request.getAttribute("errorMsg");
      if(msg=="success"){%>
	  
	   <div class="alert alert-success">
	   			Your Profile Updated Successfully....
	   		</div>
	   		 <%
   }
  
 %>


<div class="container table-responsive">          
  <table class="table table-striped" style="margin-top:120px;">
      <tr>
      	<td>YourName </td>
      	<td>${sessionScope.user.name}</td>
      </tr>
      <tr>
      	<td>MobileNO </td>
      	<td>${sessionScope.user.mobileNo}</td>
      </tr>
      <tr>
      	<td>Email </td>
      	<td>${sessionScope.user.email}</td>
      </tr>
      <tr>
      	<td>PinCode </td>
      	<td>${sessionScope.user.pinCode}</td>
      </tr>
      <tr>
      	<td>Address </td>
      	<td>${sessionScope.user.address}</td>
      </tr>
      <tr>
      	<td>City </td>
      	<td>${sessionScope.user.city}</td>
      </tr>
      <tr>
      	<td>State </td>
      	<td>${sessionScope.user.state}</td>
      </tr>
  </table>
  </div>
  </div>
