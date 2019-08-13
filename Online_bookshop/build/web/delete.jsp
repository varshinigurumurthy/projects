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
<body >

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
String isbn = resultSet.getString("isbn");

%>
<tr>
<td><%=resultSet.getString("isbn") %></td>
<td><%=resultSet.getString("Bookname") %></td>
<td><%=resultSet.getString("Author1") %></td>
<td><%=resultSet.getString("Author2") %></td>
<td><%=resultSet.getString("Description") %></td>

<td><%=resultSet.getInt("Edition") %></td>
<td><%=resultSet.getInt("Price") %></td>
<td><a href="book_delete.jsp?isbn=<%=resultSet.getString("isbn")%>">Delete</a></td>
</tr>
<%
}
con.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</table>
<footer>
<a href="interface.jsp">Back</a>
</footer>
</body>
</html>
<%
}
%>