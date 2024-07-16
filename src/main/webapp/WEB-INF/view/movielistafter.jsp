<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
<!DOCTYPE html>

<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title>Movie List</title>
    
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/css/bootstrap.min.css">
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <!--<script src="script.js" defer></script>-->
  </head>
  <style>
    /* Import Google font - Poppins */
@import url('https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600&display=swap');

* {
  font-family: "Poppins", sans-serif;
}

body {
  background: #e4dfdf !important;
}

body .container {
  max-width: 1100px;
}

.navbar navbar-light bg-light form-control{
  display: block;
  width: 500rem;
  padding: 340rem 100rem;
  
}

#filter-buttons button {
  border-radius: 3px;
  background: #fff;
  border-color: transparent;
}

#filter-buttons button:hover {
  background: #ddd;
}

#filter-buttons button.active {
  color: #efe8e8;
  background: #6c757d;
}

#filterable-cards .card {
  width: 15rem;
  height:14.5rem;
  border: 2px solid transparent;
}

#filterable-cards .card.hide {
  display: none;
}

@media (max-width: 600px) {
  #filterable-cards {
    justify-content: center;
  }


  #filterable-cards .card {
    width: calc(100% / 2 - 10px);
  }
}

  </style>
  <body>

    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <div class="container-fluid">
          <a class="navbar-brand" href="#"><img src="ott_mainlogo.jpg" width="100" height="50"></a>
          
          <div class="collapse navbar-collapse" id="navbarSupportedContent">
            
            <form class="d-flex ms-auto">
              <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
              <button class="btn btn-outline-success" type="submit">Search</button>
            </form>
          </div>
        </div>
      </nav>

    <div class="container">
      <!-- Images Filter Buttons Section -->
      <div class="row mt-5" id="filter-buttons">
        <div class="col-12">
          <button class="btn mb-2 me-1 active" data-filter="all">Show all</button>
          <button class="btn mb-2 mx-1" data-filter="holly">Hollywood</button>
          <button class="btn mb-2 mx-1" data-filter="bolly">Bollywood</button>
          <button class="btn mb-2 mx-1" data-filter="horror">Horror</button>
        </div>
      </div>
      
      <!-- HollyWood -->
         
        
               <% 
        String ProductId = null;
        String ProductName=null;
        String Catagory = null;
        String video=null;
        
 Connection conn = null;
 PreparedStatement pstm = null;
 ResultSet rs = null;
 try {
	 
		String url="jdbc:mysql://localhost:3306/entertaiment";
		String uid="root";
		String upass="30102002";
		conn=DriverManager.getConnection(url,uid,upass);
  
pstm = conn.prepareStatement("select *from product where catagory ='holly'");
rs = pstm.executeQuery();

while (rs.next()) {
ProductId=rs.getString(1);
ProductName=rs.getString(3);
video=rs.getString(4);

%>
       
        <!-- Filterable Images / Cards Section -->
      <div class="row px-2 mt-4 gap-3" id="filterable-cards">
        <div class="card p-0" data-name="holly">
            <video src=<%="videos/"+rs.getString(4)%> type="video/mp4"></video>
          <div class="card-body">
            <h6 class="card-title">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<%=ProductName %></h6>
           
            <a href="movie1?msg=<%=video %>" class="btn">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp Watch Now </a>
          </div>
        </div>        
                  
                  
 <%}

} catch (Exception e) {
}

%>





 <!-- BollyWood -->
         
        
               <% 
        String ProductId2 = null;
        String ProductName2=null;
        String Catagory2 = null;
        String video2=null;
        
 Connection conn2 = null;
 PreparedStatement pstm2 = null;
 ResultSet rs2 = null;
 try {
	 
		String url="jdbc:mysql://localhost:3306/entertaiment";
		String uid="root";
		String upass="30102002";
		conn2=DriverManager.getConnection(url,uid,upass);
  
pstm2 = conn2.prepareStatement("select *from product where catagory ='bolly'");
rs2 = pstm2.executeQuery();

while (rs2.next()) {
ProductId2=rs2.getString(1);
ProductName2=rs2.getString(3);
video2=rs2.getString(4);

%>
       
        <!-- Filterable Images / Cards Section -->
      
        <div class="card p-0" data-name="bolly">
            <video src=<%="videos/"+rs2.getString(4)%> type="video/mp4"></video>
          <div class="card-body">
            <h6 class="card-title">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<%=ProductName2 %></h6>
           
            <a href="movie1?msg=<%=video2 %>" class="btn">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp Watch Now </a>
          </div>
        </div>        
                  
                  
 <%}

} catch (Exception e) {
}

%>


 <!-- Horror -->
         
        
               <% 
        String ProductId3 = null;
        String ProductName3=null;
        String Catagory3 = null;
        String video3=null;
        
 Connection conn3 = null;
 PreparedStatement pstm3 = null;
 ResultSet rs3 = null;
 try {
	 
		String url="jdbc:mysql://localhost:3306/entertaiment";
		String uid="root";
		String upass="30102002";
		conn3=DriverManager.getConnection(url,uid,upass);
  
pstm3 = conn.prepareStatement("select *from product where catagory ='horror'");
rs3 = pstm.executeQuery();

while (rs3.next()) {
ProductId3=rs.getString(1);
ProductName3=rs.getString(3);
video3=rs.getString(4);

%>
       
        <!-- Filterable Images / Cards Section -->
     
        <div class="card p-0" data-name="horror">
            <video src=<%="videos/"+rs.getString(4)%> type="video/mp4"></video>
          <div class="card-body">
            <h6 class="card-title">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<%=ProductName3 %></h6>
           
            <a href="movie1?msg=<%=video3 %>" class="btn">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp Watch Now </a>
          </div>
        </div>        
                  
                  
 <%}

} catch (Exception e) {
}

%>
</div>
</div>
                  
    </body>
  <script>
    // Select relevant HTML elements
const filterButtons = document.querySelectorAll("#filter-buttons button");
const filterableCards = document.querySelectorAll("#filterable-cards .card");

// Function to filter cards based on filter buttons
const filterCards = (e) => {
    document.querySelector("#filter-buttons .active").classList.remove("active");
    e.target.classList.add("active");

    filterableCards.forEach(card => {
        // show the card if it matches the clicked filter or show all cards if "all" filter is clicked
        if(card.dataset.name === e.target.dataset.filter || e.target.dataset.filter === "all") {
            return card.classList.replace("hide", "show");
        }
        card.classList.add("hide");
    });
}

filterButtons.forEach(button => button.addEventListener("click", filterCards));
  </script>
</html>
                  
      