
<jsp:include page="AdminNavBar.jsp"/>



<nav class="navbar navbar-default" style="margin-top:100px">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#" style="color:blue"><b>Kesar Automobiles</b></a>
    </div>
    <ul class="nav navbar-nav">
            <li><a href="AdminHome.jsp">Home</a></li>
      <li><a href="AddCategory.jsp">Add Category</a></li>
      <li><a href="AddProduct.jsp">Add Product</a></li>
      <li class="active"><a href="AddMaker.jsp">Add Maker</a></li>
      <li><a href="AddModel.jsp">Add Model</a></li>
      <li><a href="AddBrand.jsp">Add Brand</a></li>
      <li><a href="AddYear.jsp">Add Year</a></li>
    </ul>
  </div>
</nav>
<div class="container1" style="background-color:yellow;font-size:25px;">
  
  <div id="addmaker" align="center">
    
    <form  >
	  
                  

 <label style="margin-left:-180px;color:green;margin-top:100px;" > Make Id</label>&nbsp;&nbsp;&nbsp;
  <input style="color:green;margin-top:-30px;margin-left:140px;" type="text" size="9" name= "make id" placeholder="Enter Make Id"/><br><br>
    


  <label  style="margin-left:-530px; color:green;margin-top:20px;"> Make Name</label>
                         <div class="dropdown" >
        <div class="col-lg-12">
    
    <button class="btn btn-default dropdown-toggle" type="button" data-toggle="dropdown" style="width:35%;height:10%;margin-top:-50px;margin-left:200px;">Add Make
    <span class="caret"></span></button>
    <ul   class="dropdown-menu scrollable-menu" role="menu" style="margin-left:750px;margin-top:-40px;"  >
      <li><a href="#">Audi</a></li>
      <li><a href="#">BMW</a></li>
      <li><a href="#">Chevrolet</a></li>
      <li><a href="#">Fiat</a></li>
      <li><a href="#">Ford</a></li>
      <li><a href="#">Honda</a></li>
      <li><a href="#">Hyundai</a></li>
     <li><a href="#">Land Rover</a></li>
      <li><a href="#">Mercedes-Benz</a></li>
      <li><a href="#">Nissan</a></li>
      <li><a href="#">Peugeot</a></li>
   
      
      <li><a href="#">Renault</a></li>
      <li><a href="#">Suzuki</a></li>
        <li><a href="#">Tata Motors</a></li>
      <li><a href="#">Tesla</a></li>
      <li><a href="#">Toyota</a></li>
       <li><a href="#">Volkswagen</a></li>
      <li><a href="#">Volvo</a></li>
      </ul>
</div></div>
   <br>




  <button style="margin-left:-140px;color:green;">Submit</button>
</form>
</div>
</div>






  

</div>
</body>
</html>