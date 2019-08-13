<%@page import="java.io.InputStream"%>
<%@page import="java.io.FileInputStream"%>
<%@page import="java.io.File"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.*"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
String ltr=(String)session.getAttribute("username");
if(ltr==null)
{
	session.invalidate();
%>
<jsp:include page="index.html"/>
<%
	}
else
{
%>



<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Insert book</title>
    </head>
    <body>
    <center>
        <h1 style="color:Gold; font-size:15px; ">!!!Online Book!!!</h1>
    </center>
         	<% 
	try
	{
		
		String isbn = request.getParameter("isbn");
		String bookname = request.getParameter("Bookname");
                String author1 = request.getParameter("Author1");
		String author2 = request.getParameter("Author2");
		String descp = request.getParameter("Description");
                String image = request.getParameter("Image");
		String edition = request.getParameter("Edition");
                String price = request.getParameter("Price");
		
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","root");
		String sql = ("insert into book(isbn,bookname,author1,author2,description,image,edition,price)values(?,?,?,?,?,?,?,?)");
		PreparedStatement stmt=con.prepareStatement(sql); 
		stmt.setString(1,isbn);
		stmt.setString(2,bookname);
                stmt.setString(3,author1);
		stmt.setString(4,author2);
		stmt.setString(5,descp);
		stmt.setString(6,image);
		stmt.setString(7,edition);
		stmt.setString(8,price);
		int r = stmt.executeUpdate();  
		out.println("Data Inserted Successfully!");
                //<jsp:include page="insert.jsp"/>
	
	
	
		}
		catch(Exception e)
		{
			System.out.println("Inavlid"+e);
		}
	    %>
<footer>
<a href="interface.jsp">Back</a>
</footer>
    </body>
</html>
<%
}
%>