<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.sql.*" %> 
<%@ page import="java.io.*" %> 
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
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
<%

try {
Class.forName("com.mysql.jdbc.Driver");
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection con = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<html>
<body>
<p><u>
<%
if(ltr!=null)
{
	out.print("Hi "+ltr);
}
%>
</u></p>
<center>
<h1>Welcome to the BookStore!</h1>
<div>
<h3>
| <a href="interface.jsp" class="hm" style="text-decoration: none; color: black;font-size:28px; " >HOME</a> |
</h3>
</div>

</center>

<a href="logout.jsp" style="text-decoration: none; color: white;font-size:18px; " >Logout.</a>
<hr/>


<h1>UPDATE</h1>
<table border="1">
<tr>
<td>ISBN</td>
<td>Book Name</td>
<td>Author1</td>
<td>Author2</td>
<td>Description</td>
<td>Edition</td>
<td>Price</td>

</tr>
<%
try{
con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","root");
statement=con.createStatement();
String sql ="select * from book";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){

%>
<tr>

<td><%=resultSet.getString("isbn") %></td>
<td><%=resultSet.getString("bookname") %></td>
<td><%=resultSet.getString("author1") %></td>
<td><%=resultSet.getString("author2") %></td>
<td><%=resultSet.getString("description") %></td>
<td><%=resultSet.getInt("edition") %></td>
<td><%=resultSet.getInt("price") %></td>
<td><a href="update.jsp?isbn=<%=resultSet.getString("isbn")%>">Update</a></td>
</tr>
<%
}
con.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</table>
<footer><br><br>
<a href="interface.jsp">Back</a>
</footer>
</body>
</html>
<%
}%>