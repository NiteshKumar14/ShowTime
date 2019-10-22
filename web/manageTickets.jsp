<%-- 
    Document   : manageTickets
    Created on : Oct 20, 2019, 9:53:45 P
    Author     : Nitesh Kr
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Driver"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Ticket List</title>
        <link rel="stylesheet" href="css/table.css">
    </head>
    <body>
          <form name="Admin" action="logout" method="POST">
            <input type="submit" value="Logout" >
        </form>
      
                <div class="container">
        <table >
            <thead>
            <tr>
                <th ">Booking Id</th>
                <th >User Name</th>
                <th >Movie Name</th>
                <th >Theatre Name</th>
                <th >Show Date </th>
                <th >Show Time </th>
                <th>   Price   </th>
                
    
                <th>Action</th>
                
            </tr>
            </thead>
        <%
            Driver driver=(Driver)(Class.forName("com.mysql.jdbc.Driver")).newInstance();
            DriverManager.registerDriver(driver);
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/showtime","root", "");
            PreparedStatement stmt = con.prepareStatement("select *from ticket");
            ResultSet rs = stmt.executeQuery();
            while(rs.next())
            {
            %>
            <tr>
                <td><%=rs.getString("booking_id")%></td>
                <td><%=rs.getString("username")%></td> 
                <td><%=rs.getString("movie_name")%></td>
                <td><%=rs.getString("theatre_name")%></td>
                <td><%=rs.getString("show_date")%></td>
                <td><%=rs.getString("Show_time")%></td>
                <td><%=rs.getString("ticket_price")%></td>
            
                <td>
            <form action="edit" method="post">
            <input type="submit" value="edit" class="bttn" id="<%= rs.getString("booking_id") %>">
            </form>
                </td>
            <td>
            <form action="cancel" method="post">
            <input type="submit" value="Cancel"  class="bttn1" id="<%= rs.getString("booking_id") %>">    
            </form>
                </td>
            </tr>
            <%
              }  
            %>
</table>
                     </div>
            </div>
        </div>
    </div>
        
        
        
        
        
    </body>
</html>
