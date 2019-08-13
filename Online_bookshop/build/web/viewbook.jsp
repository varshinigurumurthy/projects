<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>

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
<h1>VIEW</h1>
<table border="1">
<tr>
<td>ISBN</td>
<td>Book Name</td>
<td>Author1</td>
<td>Author2</td>
<td>Description</td>
<td>Edition</td>
<td>Price</td>
<td>Image</td>
</tr>
<%
try{
con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","root");
statement=con.createStatement();
String sql ="select * from book";
resultSet = statement.executeQuery(sql);
while(resultSet.next())
{
//String isbn = resultSet.getString("isbn");


%>
<tr>
<td><%=resultSet.getString("isbn") %></td>
<td><%=resultSet.getString("bookname") %></td>
<td><%=resultSet.getString("author1") %></td>
<td><%=resultSet.getString("author2") %></td>
<td><%=resultSet.getString("description") %></td>
<td><%=resultSet.getInt("edition") %></td>
<td><%=resultSet.getInt("price") %></td>
<td><img src="<%=resultSet.getString("image")%>" height="200px" width="200px" ></td>

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
}
%>