<jsp:include page="AdminNavBar.jsp"/>

<nav class="navbar navbar-default" style="margin-top:100px">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#" style="color:blue"><b>Kesar Automobiles</b></a>
    </div>
    <ul class="nav navbar-nav">      
    <li><a href="AdminHome.jsp">Home</a></li>
      <li><a href="AddCategory.jsp">Add Category</a></li>
      <li class="active"><a href="AddProduct.jsp">Add Product</a></li>
      <li><a href="AddMaker.jsp">Add Maker</a></li>
      <li><a href="AddModel.jsp">Add Model</a></li>
      <li><a href="AddBrand.jsp">Add Brand</a></li>
      <li><a href="AddYear.jsp">Add Year</a></li>
    </ul>
  </div>
</nav>
<div class="container1" style="font-size:25px;background-color:yellow;">
<div id="addproduct" align="center" style="color:green;">
  <div id="form">
    
    <form >
                  
<div id="product"><br>
 <label > Product Id</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <input type="text" name= "product id" placeholder="Enter Product Id"/><br><br>

 <label > Product Name</label>&nbsp;&nbsp;
                    <input type="text" name= "product name" placeholder="Enter Product Name"/><br><br>

 <label > Price</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <input type="text" name= "price" placeholder="Enter Price"/><br><br>

 <label > Quantity</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <input type="text" name= "quantity" placeholder="Enter Quantity"/><br><br>

 <label > Description</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <input type="text" name= "description" placeholder="Enter Description"/><br><br>

</div>
  <div id="button" style="align:center;margin-right:490px;">  <button style="margin-left:400px;">Submit</button></div>

</form>

</div>
</div>


</div>


</body>
</html>