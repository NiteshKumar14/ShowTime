<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Driver"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title>Movies</title>
    <link rel="stylesheet" href="css/b2style.css">
     <link rel="stylesheet" href="css/card.css">
     <link rel="stylesheet" type="text/css" href="css/mystyle_2.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
  <body>
         <%
              
             response.setHeader("Cache-Control", "no-cache , no-store,revalidate");
             response.setHeader("Pragma", "no-cache");
             response.setHeader("Expires", "0");
             
             
             
            if(session.getAttribute("id") == null)
            {
                response.sendRedirect("signin.jsp");
            }
            
            
        %>
  
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark sticky-top ">
  <a class="navbar-brand a brand" href="index.jsp">ShowTime</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
            <a class="nav-link a" href="index.jsp">Home <span class="sr-only">(current)</span></a>
          </li>
          <li class="nav-item active">
                <a class="nav-link a" href="booking.jsp">Movies <span class="sr-only">(current)</span></a>
           </li>
                <li class="nav-item active">
                        <a class="nav-link a" href="aboutUs.jsp"> About Us<span class="sr-only">(current)</span></a>
                </li>
                <div class="a">
                    <c:if test="${id != null}">
                        <input type="button" value="Welcome , ${sessionScope.name}"  class="btn  btn btn-outline-danger" onclick="window.location='welcome.jsp';">
                    <input type="button" value="Logout" class="btn  btn-outline-primary" onclick="window.location='logout';">
            </div>
       

               
        </ul>

<form class="form-inline my-2 my-lg-0" action="Search.jsp" method="post">
                    <input class="form-control mr-sm-2" type="search" name="find" placeholder="Search" aria-label="Search">
                    <button class="btn btn-outline-success my-2 my-sm-0"  type="submit">Search</button>
                </form>
      </div>
    </nav>


<div class="container">
    
    <%
            Driver driver=(Driver)(Class.forName("com.mysql.jdbc.Driver")).newInstance();
            DriverManager.registerDriver(driver);
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/showtime","root", "");
            PreparedStatement stmt = con.prepareStatement("select *from movie");
       
            ResultSet rs = stmt.executeQuery();
            while(rs.next())
            {
            %>
            <form action="bookMovie.jsp" method="post">    
             
      <div class="movie_card" id="bright">
    <div class="info_section">
      <div class="movie_header">
          <img class="locandina" src="<%=rs.getString("movie_primary") %>"/>
        <h1><%= rs.getString("movie_name") %></h1>
        <h4><%= rs.getString("movie_directer") %></h4>
        <span class="minutes"><%= rs.getString("movie_duration") %></span>
        <p class="type"><%= rs.getString("movie_genre") %></p>
      </div>
      <div class="movie_desc">
        <p class="text">
          <%= rs.getString("movie_desc") %>
        </p>
        <input type="submit" class="logg" value="Book Now">
      </div>

    </div>
        <div class="blur_back <%= rs.getString("css")%>" >
            <style>
                .<%= rs.getString("css")%> {
                    background: url("<%= rs.getString("movie_secondary")  %>");
}

                </style>
            
            
        </div>
</div>
<input type="hidden" value="<%= rs.getString("movie_name")   %>" name="movie_name">                 
<input type="hidden" value="<%= rs.getString("movie_desc")   %>" name="movie_desc">  
<input type="hidden" value="<%= rs.getString("movie_duration")   %>" name="movie_duration">  
<input type="hidden" value="<%= rs.getString("movie_primary")   %>" name="movie_primary">  
<input type="hidden" value="<%= rs.getString("movie_secondary")   %>" name="movie_secondary">  
<input type="hidden" value="<%= rs.getString("movie_genre")   %>" name="movie_genre">  
<input type="hidden" value="<%= rs.getString("css")   %>" name="css">
            </form>
                    
<% }%>
       




    </body>

</html>