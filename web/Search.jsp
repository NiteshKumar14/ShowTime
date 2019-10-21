<%-- 
    Document   : Search
    Created on : Oct 21, 2019, 3:06:04 PM
    Author     : Nitesh Kr
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Driver"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
              String content=request.getParameter("find");
              Driver driver =(Driver)(Class.forName("com.mysql.jdbc.Driver")).newInstance();
              DriverManager.registerDriver(driver);
        Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/showtime","root", "");
        PreparedStatement stmt=con.prepareStatement("select * from movie where movie_name like %?");
        stmt.setString(1, content);
        ResultSet rs=stmt.executeQuery();
        while(rs.next())
        {
            
        %>    
    </body>
</html>
