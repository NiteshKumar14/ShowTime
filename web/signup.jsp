
<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title>Movies</title>
    <link rel="stylesheet" href="css/b2style.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="css/style.css">
      <script defer  src="js/signUpCheck.js"></script>
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
  <body>
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
                        <a class="nav-link a" href="about.jsp"> About Us<span class="sr-only">(current)</span></a>
                </li>
                <div class="a">
                    <button type="button" class="btn  btn-outline-primary" onclick="window.location='signin.jsp';">Sign In</button>

               </div>
        </ul>


        <form class="form-inline my-2 my-lg-0">
          <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
          <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
        </form>
      </div>
    </nav>


<div class="main">

    <section class="signup extra">
        <!-- <img src="images/signup-bg.jpg" alt=""> -->
        <div class="container">
           
            <div class="signup-content extra">
                <form method="POST" id="signup-form" class="signup-form" action="signup">
                <h2 class="form-title">Create account</h2>
                 <%
                if(request.getParameter("t1")!=null){
            %>
            <script>
                alert("Username already exists ");
                </script>
            <% }%>
                    <div class="form-group">
                        <input type="text" class="form-input" name="name" id="name" placeholder="Your Name" onfocus="changeCol1()" required/>
                    </div>
                    <div class="form-group">
                        <input type="text" class="form-input" name="username" id="username" placeholder="UserName" onfocus="changeCol2()" required/>
                    </div>
                    <div class="form-group">
                        <input type="password" class="form-input" name="password" id="password" placeholder="Password" onfocus="changeCol3()" required/>
                        <span toggle="#password" class="zmdi zmdi-eye field-icon toggle-password"></span>
                    </div>
                    <div class="form-group">
                        <input type="password" class="form-input" name="re_password" id="re_password" placeholder="Repeat your password" onfocus="changeCol4()" required/>
                    </div>
                    <p id="msg" style="color:red;"></p>
                    <div class="form-group">
                        <input type="checkbox" name="agree-term" id="agree-term" class="form-check-input position-static" />
                        <label for="agree-term" class="label-agree-term"><span><span></span></span>I agree all statements in  <a href="#" class="term-service">Terms of service</a></label>
                    </div>
                    <div class="form-group">
                        <input type="submit" name="submit" id="submit" class="form-submit" value="Sign up" onclick="checkSignUp(event)" />
                    </div>
                </form>
                <p class="loginhere">
                    Have already an account ? <a href="signin.jsp" class="loginhere-link">Login here</a>
                </p>
            </div>
        </div>
    </section>

</div>

<!-- JS -->
<script src="vendor/jquery/jquery.min.js"></script>
<script src="js/main.js"></script>

</body><!-- This templates was made by Colorlib (https://colorlib.com) -->

</html>
<!-- end document-->
