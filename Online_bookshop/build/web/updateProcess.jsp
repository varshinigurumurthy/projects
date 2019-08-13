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

String isbn = request.getParameter("isbn");
String bookname=request.getParameter("bookname"); 
String author1=request.getParameter("author1");  
String author2=request.getParameter("author2");
String description=request.getParameter("description");

String edition=request.getParameter("edition");
int edition1=Integer.parseInt(edition);
String price=request.getParameter("price");
int Price1 = Integer.parseInt(price);



if(isbn != null)
{
Connection con = null;
PreparedStatement ps = null;

try
{
Class.forName("com.mysql.jdbc.Driver");
con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","root");
String sql="update book set bookname=?,author1=?,author2=?,description=?,edition=?,price=? where isbn="+isbn;
ps = con.prepareStatement(sql);
ps.setString(1,bookname);
ps.setString(2, author1);
ps.setString(3, author2);
ps.setString(4, description);
ps.setInt(5, edition1);
ps.setInt(6, Price1);

int i = ps.executeUpdate();
if(i > 0)
{
out.print("Data Updated.");
%>
<jsp:forward page="interface.jsp"></jsp:forward>
<%
}
else
{
out.print("There is a problem in updating Record.");
%>
<jsp:include page="update.jsp"></jsp:include>
<%
}
}
catch(SQLException sql)
{
request.setAttribute("error", sql);
out.println(sql);
}
}
%>
<footer>
<a href="interface.jsp">Back</a>
</footer>

<%}
%>
