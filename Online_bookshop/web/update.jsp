
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
    <%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<%
try{

String isbn=request.getParameter("isbn");
out.println("isbn:-"+isbn);
con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","root");
statement=con.createStatement();
String sql ="select * from book where isbn="+isbn;
resultSet = statement.executeQuery(sql);
while(resultSet.next()){

%>
<center>
<h1>Welcome to the BookStore!</h1>
<div>
<h3>
| <a href="interface.jsp" class="hm" style="text-decoration: none; color: white;font-size:28px; " >HOME</a> |
</h3>
</div>

</center>

<a href="logout.jsp" style="text-decoration: none; color: white;font-size:18px; " >Logout.</a>
<hr/>
<h1>UPDATE</h1>
<form method="post" action="updateProcess.jsp">
<input type="hidden" name="isbn" value="<%=resultSet.getString("isbn") %>"/>
<table align="center">

		
		<tr>
			<td>Book Name</td>
			<td><input type="text" name="bookname"value="<%=resultSet.getString("bookname") %>" /></td>
		</tr>
		<tr>
			<td>Author1</td>
			<td><input type="text" name="author1" value="<%=resultSet.getString("author1") %>"/></td>
		</tr>
		<tr>
			<td>Author2</td>
			<td><input type="text" name="author2" value="<%=resultSet.getString("author2") %>"/></td>
		</tr>
		<tr>
			<td>Description</td>
			<td><input type="text" name="desccription" value="<%=resultSet.getString("description") %>"/></td>
		</tr>
		<tr>
			<td>Edition</td>
			<td><input type="text" name="edition" value="<%=resultSet.getString("edition") %>" /></td>
		</tr>
		<tr>
			<td>Price</td>
			<td><input type="text" name="price" value="<%=resultSet.getString("price") %>" /></td>
		</tr>
		
		<tr>
			<td colspan="2">
				<input type="submit" value="Submit">
			</td>
		</tr>
	</table>
</form>
<%
}
con.close();
} catch (Exception e) {
e.printStackTrace();
}
%>

</body>
</html>
