<%-- 
    Document   : logout
    Created on : 24 Jul, 2019, 4:12:40 AM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Logout</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <%
    HttpSession ss=request.getSession(); 
     // out.println("You are Logged out");
    ss.invalidate();
RequestDispatcher rd=request.getRequestDispatcher("index.html");  
rd.forward(request,response);
%>
    </body>
</html>
