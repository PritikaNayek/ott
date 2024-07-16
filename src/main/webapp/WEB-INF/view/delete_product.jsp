<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
    <%@page import ="org.springframework.ui.ModelMap" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Delete Product</title>
</head>
<body>
<%
String prodId=request.getParameter("prodId");
Connection con;
PreparedStatement pstm;
try{
	con=DriverManager.getConnection("jdbc:mysql://localhost:3306/entertaiment","root","30102002");
	pstm=con.prepareStatement("delete from product where prod_id=?");
	pstm.setString(1, prodId);
	pstm.executeUpdate();
	con.close();
	response.sendRedirect("viewproduct");
}catch (Exception e){}
%>
</body>
</html>