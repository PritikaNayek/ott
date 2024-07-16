<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
    
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <title></title>
        <!-- Latest compiled and minified CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">

        <!-- jQuery library -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

        <!-- Popper JS -->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>

        <!-- Latest compiled JavaScript -->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>

        <meta name="viewport" content="width=device-width, initial-scale=1">
    </head>
    <body><center>
        <h2><center>Movie List</center></h2><hr>
        <div class="table-responsive">
            <table class="table table-striped table-bordered table-hover table-condensed" width="80%" align="center">
                <tr>

                    <th><center>MovieId</center></th>
                    <th><center>Catagory</center></th>
                    <th><center>Name</center></th>
                    <th><center>video</center></th>
                    
                    </tr>
                <form action="#">    
                              
            <% 
       
        String movieId = null;
        String Catagory = null;
        String name=null;
        String video=null;
        
 Connection conn = null;
 PreparedStatement pstm = null;
 ResultSet rs = null;
 try {
	 String url="jdbc:mysql://localhost:3306/entertaiment";
		String uid="root";
		String upass="30102002";
		conn=DriverManager.getConnection(url,uid,upass);
pstm = conn.prepareStatement("select *from product");
rs = pstm.executeQuery();

while (rs.next()) {
movieId=rs.getString(1);
Catagory=rs.getString(2);
name=rs.getString(3);
video=rs.getString(4);


out.println("<tr>");


out.println("<td>");
out.println(movieId);
out.println("</td>");

out.println("<td>");
out.println(Catagory);
out.println("</td>");

out.println("<td>");
out.println(name);
out.println("</td>");

out.println("<td>");
out.println(video);
out.println("</td>");




out.println("<td>");
out.println("<a href='deleteproduct?prodId=" + movieId + "'><div class='btn btn-danger'>Delete</div></a>");

out.println("</td>");

out.println("</tr>");
}

} catch (Exception e) {
}

%>
                    
                
            

            </table>
        </div>
        </center>
        </body>
        </html>