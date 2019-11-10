<%-- 
    Document   : generateTicket
    Created on : Nov 3, 2019, 7:54:43 PM
    Author     : Nitesh Kr
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Ticket</title>
        <link rel="stylesheet" href="css/ticket.css">
    </head>
    <body>

<div class="ticket">
    <div class="holes-top"></div>
    <div class="title">
        <p class="cinema"><%= request.getParameter("theatre_name") %>(Screen No.<%= request.getParameter("screen_id")    %>)</p>
        
        <p class="movie-title"><%=  request.getParameter("movie_name") %></p>
    </div>
    <div class="poster">
        <img src="<%= request.getAttribute("movie_image") %>" alt="Movie: <%=  request.getParameter("movie_name") %>" />
    </div>
    <div class="info">
        <table>
            <tr>
                <th>BOOKING NO.</th>
                
                <th>SEAT</th>
            </tr>
            <tr>
                <td class="bigger"><%= request.getAttribute("booking_id") %></td>
               
                <td class="bigger"><%= request.getParameter("client_seats") %></td>
            </tr>
        </table>
        <table>
            <tr>
                <th>PRICE</th>
                <th>DATE</th>
                <th>TIME</th>
            </tr>
            <tr>
                <td><%= request.getParameter("amount") %></td>
                <td><%=  request.getParameter("date")  %></td>
                <td><%= request.getParameter("timing") %></td>
            </tr>
        </table>
    </div>
    <div class="holes-lower"></div>
    <div class="serial">
        <table class="barcode">
            <tr></tr>
        </table>
        <table class="numbers">
            <tr>
                <td>9</td>
                <td>1</td>
                <td>7</td>
                <td>3</td>
                <td>7</td>
                <td>5</td>
                <td>4</td>
                <td>4</td>
                <td>4</td>
                <td>5</td>
                <td>4</td>
                <td>1</td>
                <td>4</td>
                <td>7</td>
                <td>8</td>
                <td>7</td>
                <td>3</td>
                <td>4</td>
                <td>1</td>
                <td>4</td>
                <td>5</td>
                <td>2</td>
            </tr>
        </table>
    </div>
</div>
    </body>
</html>
