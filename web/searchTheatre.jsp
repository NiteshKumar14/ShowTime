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
        <title> Theatre list </title>
        <script defer type="text/javascript" src="js/findDate.js"></script>
        <script defer type="text/javascript" src="http://code.jquery.com/jquery-1.7.1.min.js"></script>
          <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
    </head>
    <body>
        <form action="searchTheatre" action="post" id="dateForm">
        <div class="btn-group mr-2" role="group" aria-label="First group" id="date1"></div>
        <input type="hidden" name="movie_name" value="<%= request.getParameter("movie_name") %>">
        <input type="hidden" name="bookDate" id="date12" >
        
        </form>
   <%
       
       Driver driver=(Driver)(Class.forName("com.mysql.jdbc.Driver").newInstance());
       DriverManager.registerDriver(driver);
       String movie_name=request.getParameter("movie_name");
     
       String date=request.getParameter("bookDate");
       if(request.getAttribute("servlet")!=null)
       {
           date=request.getAttribute("bookDate").toString();
           //out.print("date is"+date);
       }
           
       
       String times;
       int slotc;
       String []slots;
       Connection con =DriverManager.getConnection("jdbc:mysql://localhost:3306/showtime","root","");
       PreparedStatement stmt=con.prepareStatement("select *from reservation where movie_name=? and date=?");
       stmt.setString(1,movie_name);
       stmt.setString(2,date);
       ResultSet rs=stmt.executeQuery();
       PreparedStatement ts=con.prepareStatement("select timing from time_slots where slot_id=?");
       
       while(rs.next())
       {
           
      times= rs.getString("slot_id");
      ts.setString(1,times);
   %>
   
     <div class="panel panel-success">
         <div class="panel-heading">
             <%= rs.getString("theatre_name") %>
            
         </div>
      <div class="panel-body">
          <form action="bookSeats.jsp" method="post"> 
      <% ResultSet rss=ts.executeQuery();         
      
         while(rss.next()){ %>
       <button type="submit" name="getTime" class="btn btn-outline-dark"><%= rss.getString("timing") %></button>
           <% } %>
          </form>
      </div>
      
       
    </div>
    <% } %>
    </body>
</html>
