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
      <li><a href="AddMaker.jsp">Add Maker</a></li>
      <li><a href="AddModel.jsp">Add Model</a></li>
      <li class="active"><a href="AddBrand.jsp">Add Brand</a></li>
      <li><a href="AddYear.jsp">Add Year</a></li>
    </ul>
  </div>
</nav>
<div class="container1" style="font-size:25px;background-color:yellow;color:green;">

    
    <form>
                  
<div id="brand"align="center"><br><br>
  <label>Brand Id</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <input type="text" size="10" name= "brand id" placeholder="Enter Brand Id"/><br><br>
    


   <label>Brand Name</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <input type="text" size="14" name= "brand name" placeholder="Enter Brand Name"/><br>



</div><br>
<br>
  <button style="margin-top:-40px;margin-left:400px;">Submit</button>
</form>
</div>


</body>
</html>