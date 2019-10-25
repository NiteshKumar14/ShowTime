<%-- 
    Document   : searchTheatre
    Created on : 25 Oct, 2019, 8:38:52 PM
    Author     : manish
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Driver"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
          <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
    </head>
    <body>
   <%
       
       Driver driver=(Driver)(Class.forName("com.mysql.jdbc.Driver").newInstance());
       DriverManager.registerDriver(driver);
       String movie_name=request.getParameter("movie_name");
       String date="2019-10-25";
       String times;
       int slotc;
       String []slots;
       Connection con =DriverManager.getConnection("jdbc:mysql://localhost:3306/showtime","root","");
       PreparedStatement stmt=con.prepareStatement("select *from reserve where movie_name=? and date=?");
       stmt.setString(1,movie_name);
       stmt.setString(2,date);
       ResultSet rs=stmt.executeQuery();
      
       while(rs.next())
       {
           
      times= rs.getString("time_slots");
      slots=times.split(",");
      slotc=0;
   %>
   
     <div class="panel panel-success">
         <div class="panel-heading">
             <%= rs.getString("theatre_name") %>
            
         </div>
      <div class="panel-body">
          <form action="bookSeats.jsp" method="post"> 
      <% for(slotc=0;slotc<slots.length;slotc++){ %>
       <button type="submit" name="getTime" class="btn btn-outline-dark"><%= slots[slotc]%></button>
           <% } %>
          </form>
      </div>
      
       
    </div>
    <% } %>
    </body>
</html>
