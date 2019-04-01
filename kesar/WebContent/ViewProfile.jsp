<jsp:include page="CustomerHeader.jsp"/>


<div class="container table-responsive">          
  <table class="table table-striped" style="margin-top:120px;">
      <tr>
      	<td>YourName </td>
      	<td>${sessionScope.user.Name}</td>
      </tr>
      <tr>
      	<td>MobileNO </td>
      	<td>${sessionScope.user.MobileNo}</td>
      </tr>
      <tr>
      	<td>Email </td>
      	<td>${sessionScope.user.Email}</td>
      </tr>
      <tr>
      	<td>PinCode </td>
      	<td>${sessionScope.user.pinCode}</td>
      </tr>
      <tr>
      	<td>Address </td>
      	<td>${sessionScope.user.Address}</td>
      </tr>
      <tr>
      	<td>City </td>
      	<td>${sessionScope.user.City}</td>
      </tr>
      <tr>
      	<td>State </td>
      	<td>${sessionScope.user.State}</td>
      </tr>
  </table>
  </div>
