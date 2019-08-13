<%-- 
    Document   : viewfeedback
    Created on : 5 Mar, 2017, 4:49:07 PM
    Author     : Varshini
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.*,java.util.*"%>  
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <link rel="stylesheet" type="text/css" href="css/style.css">
        <title>JSP Page</title>
    </head>
    <body>
   
    
        <jsp:useBean id="obj" class="com.feedbackDAO"/>  
        <h1>VIEW FEEDBACK</h1>
       <%  
          String user = (String)request.getAttribute("ctype");
            String a = (String)session.getAttribute("username");
          out.print(a);
   List<feedback> flist=feedbackDAO.getallfeedback();
out.print("count of feedback"+flist.size());
Iterator i=flist.iterator();
%>
<table border="1" width="90%">
<tr><th>Name</th><th>Gender</th><th>Contact no</th><th>Email</th><th>Suggestions</th></tr>
    <%
while(i.hasNext()){  
feedback j = (feedback)i.next();  
%>

  <tr><td>
        <%  
         out.print(j.getName()); 
      %>
      </td><td>
          <%
out.print(j.getGender());
%>
      </td>  <td>
        <%
out.print(j.getContact_no());
%>  
          
      </td>
      <td>
    <%
out.print(j.getEmail());
%>
</td>
<td>
    <%
out.print(j.getSuggestion());
%>
</td>
</tr>
<%
}  

   

%>
   </table>



 
    </body>
</html>
