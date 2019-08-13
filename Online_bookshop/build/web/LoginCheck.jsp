<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>


<html>
<head>

<title>Insert title here</title>
</head>
<body>
	<%
	String username=request.getParameter("username");
	String password=request.getParameter("password");
	Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","root");
                Statement st = con.createStatement();
                ResultSet rs = st.executeQuery("select * from register where username = '"+username+"' and password = '"+password+"'");
    if(rs.next())
    {
	session.setAttribute("username",rs.getString(2));	
	response.sendRedirect("interface.jsp");
    }
else
{
	out.print("Error");
%>
<jsp:include page="Error.html"/>
<%
}
%>
</body>
</html>
