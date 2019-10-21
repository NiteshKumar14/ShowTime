<!DOCTYPE html>
<html lang="en" dir="ltr">

<head>
    <meta charset="utf-8">
    <title>Movies</title>
    <link rel="stylesheet" href="b2style.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>

    <body>
       
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark sticky-top ">
            <a class="navbar-brand a brand" href="index.jsp">ShowTime</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item active">
                        <a class="nav-link a" href="b2.html">Home <span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item active">
                        <a class="nav-link a" href="notes.html">Movies <span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item active">
                        <a class="nav-link a" href="#"> About Us<span class="sr-only">(current)</span></a>
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

        <button type="button" class="btn btn-outline-light btn-lg btn-block"></button>
        <div class="container">
            <c:if test="${requestScope.logged != null}">
                <p> ${requestScope.logged}</p>
            <div class="jumbotron">
                <h1>Movies</h1>
                <div class="row">
                    <div class="col-sm-6">
                        <div class="card">
                            <img src="movie1.jpg" class="card-img-top" alt="...">
                            <div class="card-body">
                                <h5 class="card-title">Special title treatment</h5>
                                <p class="card-text">With supporting text below as a natural lead-in to additional content.</p>
                                <a href="#" class="btn btn-primary">Book</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6">
                        <div class="card">
                            <img src="movie3.jpg" class="card-img-top" alt="...">
                            <div class="card-body">
                                <h5 class="card-title">Special title treatment</h5>
                                <p class="card-text">With supporting text below as a natural lead-in to additional content.</p>
                                <a href="#" class="btn btn-primary">Book</a>
                            </div>
                        </div>
                    </div>
                </div>
    </body>

</html>