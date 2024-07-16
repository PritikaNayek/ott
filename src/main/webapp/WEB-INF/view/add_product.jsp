<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<style>
input[type=text], select {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
}

input[type=submit] {
  width: 100%;
  background-color: #4CAF50;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}

input[type=submit]:hover {
  background-color: #45a049;
}
input[type=reset] {
  width: 100%;
  background-color: #4CAF50;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}
input[type=reset]:hover {
  background-color: #45a049;
}
div {
  border-radius: 5px;
  background-color: #f2f2f2;
  padding: 20px;
}
#header{
    display: flex;
    align-items: center;
    justify-content: space-between;
    padding: 20px 80px;
    background: #E3E6F3;
    box-shadow: 0 5px 15px rgba(0,0,0,0.06);
}

#navbar {
    display: flex;
    align-items : center;
    justify-content: center;
}
#navbar li{
    list-style: none;
    padding: 0 20px;
}

</style>
<body>

<h3>Add Product</h3>


<section id="header">
    <a href="#"><img src="ott_mainlogo.jpg" class="logo" alt=""></a>

    <div>
        <ul id="navbar">
            <li><a href="viewproduct"> View Product</a></li>
            
            <!--<li><a href="cart.html"><i class="fas fa-shopping-bag"></i></a></li>-->
        </ul>
    </div>

</section>
<div>
  <form action="prod"  method="post" enctype="multipart/form-data" >
    <label for="fname">Product Id</label>
    <input type="text"  name="prodid" placeholder="Product Id..">

    <label for="lname">Product Name</label>
    <input type="text"  name="prodname" placeholder="Product name..">

    <label for="country" placeholder="Select film">Catagory</label>
    <select id="country" name="catagory" placeholder="Select film">
      <option value="holly">Hollywood</option>
      <option value="bolly">Bollywood</option>
      <option value="horor">Horror</option>   
     
    </select>
  
    <label for="lname"></label>
    Select File:<input type="file" name="video" />
    <input type="submit" value="Submit">
    <input type="reset" value="Clear">
  </form>
</div>

</body>
</html>


