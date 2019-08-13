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
out.print(isbn);

if(isbn != null)
{
Connection con = null;
Statement st = null;

try
{
Class.forName("com.mysql.jdbc.Driver");
 con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","root");
String sql="delete from book where isbn="+isbn;
st = con.createStatement();
int i = st.executeUpdate(sql);
if(i > 0)
{

%>
Deleted successfully!
<jsp:forward page="insert.jsp"></jsp:forward>
<%
}
else
{
out.print("There is a problem in deleting Record.");
%>
<jsp:include page="delete.jsp"></jsp:include>
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
<%
}
%>