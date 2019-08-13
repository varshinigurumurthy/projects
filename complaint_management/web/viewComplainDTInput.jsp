<%-- 
    Document   : viewComplainDTInput
    Created on : 6 Mar, 2017, 3:52:43 PM
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
        <h1>VIEW COMPLAINTS w.r.To DATE</h1>
        <form action="viewComplaintdt.jsp" method="get">       
            <input type="date" name="fromdate"><br>
            <input type="date" name="todate"><br>
            <input type="button" value="submit">
            </form>
    </body>
</html>
