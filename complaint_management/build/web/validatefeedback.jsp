<%@page import="com.*"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
             <%
out.print("hello");
    String Name = request.getParameter("name");
    String gender=request.getParameter("gender");
    String contact_no=request.getParameter("cno");
    String email=request.getParameter("email");
    String suggestion=request.getParameter("sugg");
  out.print(Name +" "+ gender +" "+ contact_no+ " "+email+ " "+suggestion);
  // user u=new user(user_type, first_name, password,last_name ,first_name, "A",gender,email_id,contact_no,country,address);    
  //user u= new user("A" ,"aptech","aptech","pqjr","sddgrth","O" ,"Male","hggjgf","665656400",20,"shgf","sdgfkjjef");
    feedback f= new feedback(Name,gender,contact_no,email,suggestion,"A");
   // feedback f= new feedback("abc","male","","dsf","A");
 //feedback f=new feedback(id,user_id,fdate,suggestion,"A",name,concatact_no,email);
  
  feedbackDAO fd = new feedbackDAO();
  int result=fd.addfeedback(f);

if(result >= 1){
%>    
  

<jsp:forward page="give_feedback.jsp"/>
<%
}
else
{
%>
<jsp:forward page="index.jsp"/>
<%
}
%> 

    </body>
</html>
