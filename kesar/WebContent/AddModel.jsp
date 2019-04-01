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
      <li class="active"><a href="AddModel.jsp">Add Model</a></li>
      <li><a href="AddBrand.jsp">Add Brand</a></li>
      <li><a href="AddYear.jsp">Add Year</a></li>
    </ul>
  </div>
</nav>
<div class="container1" style="font-size:25px;color:green;background-color:yellow;"align="center">
  <div id="form">
    
    <form><br><br>
                  
<div id="make">
 <label > Model Id</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <input type="text" name= "model id" placeholder="Enter Model Id"/><br><br>
    


  <label > Model Name</label>&nbsp;&nbsp;&nbsp;
                    <input type="text" name= "model name" placeholder="Enter Model Name"/><br><br>

  <label  style="margin-left:-40%;">  Year</label>&nbsp;&nbsp;
                      <div class="dropdown" >
        <div class="col-lg-12">
    
    <button class="btn btn-default dropdown-toggle" type="button" data-toggle="dropdown" style="width:35%;height:10%;margin-top:-45px;margin-left:180px;">Year
    <span class="caret"></span></button>
    <ul   class="dropdown-menu scrollable-menu" role="menu" style="margin-left:750px;margin-top:-40px;"  >
      <li><a href="#">2000</a></li>
      <li><a href="#">2001</a></li>
      <li><a href="#">2002</a></li>
      <li><a href="#">2000</a></li>
      <li><a href="#">2001</a></li>
      <li><a href="#">2002</a></li>
   
      <li><a href="#">2003</a></li>
      <li><a href="#">2004</a></li>
      <li><a href="#">2005</a></li>
   
      <li><a href="#">2006</a></li>
      <li><a href="#">2007</a></li>
      <li><a href="#">2008</a></li>
        <li><a href="#">2009</a></li>
      <li><a href="#">2010</a></li>
      <li><a href="#">2011</a></li>
       <li><a href="#">2012</a></li>
      <li><a href="#">2013</a></li>
      <li><a href="#">2014</a></li>
    <li><a href="#">2015</a></li>
      <li><a href="#">2016</a></li>
      <li><a href="#">2017</a></li>
        <li><a href="#">2018</a></li>
      <li>2019</li>
     
   
   
   
    </ul></div>
  </div>


</div><br>
   <button style="margin-left:-120px;margin-right:100px;">Submit</button>
  </form>

</div>
</div>

</body>
</html>