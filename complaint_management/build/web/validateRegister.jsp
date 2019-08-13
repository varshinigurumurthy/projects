<%@page import="java.sql.PreparedStatement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.*"%>  
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        <%
out.print("hello");

 String first_name = request.getParameter("fname");
    String last_name = request.getParameter("lname");
    String user_type=request.getParameter("utype");
    String gender=request.getParameter("gender");
   String contact_no=request.getParameter("cno");
    String email_id=request.getParameter("eid");
    String password=request.getParameter("pass");
    String country=request.getParameter("country");
    String address=request.getParameter("address");
  
  
  
 // out.print(first_name +" "+ last_name +" " + user_type +" "+ gender +" "+ country);
   user u=new user(user_type, first_name, password,last_name ,first_name, "A",gender,email_id,contact_no,country,address);    
  //user u= new user("A" ,"aptech","aptech","pqjr","sddgrth","O" ,"Male","hggjgf","66565s6400",20,"shgf","sdgfkjjef");
  userDAO ud = new userDAO();
  int result = ud.addUser(u);
if(result >= 1){
%>    
  

<jsp:forward page="login.jsp"/>
<%
}
else
{
%>
<jsp:forward page="register.jsp"/>
<%
}
%> 
    </body>
</html>
