<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>HACKATHON TESTING DEPLOYMENT</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href='https://fonts.googleapis.com/css?family=Pacifico' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Arimo' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Hind:300' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Open+Sans+Condensed:300' rel='stylesheet' type='text/css'>
        <!-- Import Boostrap css, js, font awesome here -->
    <link href="https://use.fontawesome.com/releases/v5.0.4/css/all.css" rel="stylesheet">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="./bootstrap/js/bootstrap.js"></script>
    <link rel="stylesheet" href="./bootstrap/css/bootstrap.css">
    <link type="text/css" rel="stylesheet" href"{{ url_for('static', filename=' ./index.css') }}">
</head>

<body>
    <!-- Navigation -->
    <nav class="navbar navbar-expand-md navbar-light bg-light sticky-top">
        <div class="container-fluid">
            <a class="navbar-branch" href="#">
                <img src="./img/logo.jpg" height="70">
            </a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarResponsive">
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item">
                        <a class="nav-link active" href="#">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">About</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Test</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Team</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Connect</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

    <h1>CERVICAL CANCER PREDICTION</h1>

    <div class="login">
          <form action="{{ url_for('predict') }}" method="POST">

              <input type="text" name="Age" placeholder="Age" required="required"/>
              <input type="text" name="Number of sexual partners" placeholder="Number of sexual partners" required="required"/>
              <input type="text" name="First sexual intercourses" placeholder="First sexual intercourses" required="required"/>
              <input type="text" name="Num of pregnancies" placeholder="Number of pregnancies" required="required"/>
              <input type="text" name="Smokes (years)" placeholder="Smokes (years)" required="required"/>
              <input type="text" name="Smokes (packs/year)" placeholder="Smokes (packs/year)" required="required"/>
              <input type="text" name="Hormonal Contraceptives (years)" placeholder="Hormonal Contraceptives (years)" required="required"/>
              <input type="text" name="IUD (years)" placeholder="IUD (number of years using contraceptive methods)" required="required"/>
              <input type="text" name="STDs (number)" placeholder="STDs (number of sexually transmitted diseases)" required="required"/>

              <button type="submit" class="btn btn-primary btn-lg">Predict</button>
        </form>

        <br>
        {{prediction_text}}
        <footer>
        <div class="container-fluid padding">
            <div class="row text-center">
                <%--<div class="col-md-6">
                    <p>Contact Us</p>
                    <hr class="light">
                    <p>111-222-3333</p>
                    <p>mymail@gmail.com</p>
                    <p>Le Dai Hanh street, HCM, Vietnam</p>
                </div>--%>
                <div class="col-12">
                    <hr class="light-100">
                    <h5>&copy; Test SheCodes Ho Chi Minh</h5>
                </div>
            </div>
        </div>
    </footer>
    </div>

</body>
</html>
