<%-- 
    Document   : payment
    Created on : Nov 2, 2019, 9:32:56 AM
    Author     : Nitesh Kr
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            request.getRequestDispatcher("generateTicket.jsp").forward(request,response);
        %>
    </body>
</html>
