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
        
                <table class="table table-striped table-hover">
                    <thead>
                        <tr>
                            <th>#</th>
                            <th>User<th>
                            <th>Movie</th>
                            <th>Theater</th>
                            <th>Date</th>						
                            <th>Seats</th>						
                            <th>Amount</th>
                           <th>Action</th>
                        </tr>

                    </thead>
                </table>
                <%  Driver driver = (Driver) Class.forName("com.mysql.jdbc.Driver").newInstance();
                    DriverManager.registerDriver(driver);
                    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/showtime", "root", "");
                    PreparedStatement st = con.prepareStatement("SELECT * FROM ticket");
                    ResultSet rs = st.executeQuery();
                    int count = 1;
                    while (rs.next()) {

                %>

                <form id="columnForm" action="adminDelete" method="post">
                    <table class="table table-striped table-hover">


                        <tbody>

                            <tr>
                                <td><%=count%></td>
                                <td><%=rs.getString(1)%></td>
                                <td><input type="hidden" value="<%=rs.getString(3)%>" name="movie_name"><%=rs.getString(3)%></td>
                                <td><input type="hidden" value="<%=rs.getString(2)%>" name="theatre_name"><%=rs.getString(2)%></td>
                                <td><input type="hidden" value="<%=rs.getString(6)%>" name="booking_date"><%=rs.getString(6)%></td>   
                                <td><input type="hidden" value="<%=rs.getString(10)%>" name="seats_booked"><%=rs.getString(10)%></td>
                                <td> <input type="hidden" value="<%=rs.getString(3)%>" name="movie_price"><%=rs.getString(4)%></td>                            

                        <input type="hidden" value="<%=rs.getString("slot_id")%>" name="slot_id">
                        <input type="hidden" value="<%=rs.getString("show_time")%>" name="show_time">
                     
                    
                        <td ><center> <button  name="cancel" type="submit">Cancel</button></center>
                        </td>
                        
                        </td>
                        </tr>
                        </tbody>
                    </table>
                </form>          
                <% count++;
                    }

                %>
        
    </body>
</html>