<%-- 
    Document   : getctypecomplaint
    Created on : 16 Mar, 2017, 8:43:45 PM
    Author     : Varshini
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="view_complaint.jsp" method="post">

             Complaint type:
           <select name="ctype">
    <option value="other staff">other staff</option>
    <option value="equipments">equipments</option>
    <option value="infrastructure">infrastructure</option>
      <option value="doctor">doctor</option>
       <option value="food">food</option>
      </select><br><br>      
     <input type="button" value="submit">      
            </form>
    </body>
</html>
