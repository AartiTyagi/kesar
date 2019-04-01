<jsp:include page="AdminNavBar.jsp"/>
<nav class="navbar navbar-default" style="margin-top:100px">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#" style="color:blue"><b>Kesar Automobiles</b></a>
    </div>
    <ul class="nav navbar-nav">
      <li><a href="AdminHome.jsp">Home</a></li>
      <li class="active"><a href="AddCategory.jsp">Add Category</a></li>
      <li><a href="AddProduct.jsp">Add Product</a></li>
      <li><a href="AddMaker.jsp">Add Maker</a></li>
      <li><a href="AddModel.jsp">Add Model</a></li>
      <li><a href="AddBrand.jsp">Add Brand</a></li>
      <li><a href="AddYear.jsp">Add Year</a></li>
    </ul>
  </div>
</nav>
<div class="container1" style="font-size:25px;background-color:yellow;color:green;">
<form>
<div id="categories" style="margin-left:170px;margin-top:60px;"><br><br>
 <label > Category Id</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <input type="text" size="14" name= "category id" placeholder="Enter Category Id"/>
         <br><br>

                   <label > Category Name</label>&nbsp;&nbsp;
                    <input type="text" name="category name" placeholder="Enter Category Name"/></div>


     <button style="margin-left:370px;padding:8px;margin-top:45px;font-size:25px">Create Category</button>

</form>

</div>


</body>
</html>