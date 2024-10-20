<!-- index.html -->
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sage student Event</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

    <!-- Bootstrap JS and jQuery -->
    <script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    
    <style>
        body {
            background-image: url('images/bg.jpg');
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
            height: 100vh; /* Set the height to at least the viewport height */
        }
        .container-fluid{
        	margin-top: -45px;
        }
    </style>
</head>
<body>
    <div id="navbarContainer"></div>
    <marquee><h2 style="color: crimson;">Welcome to the sage student event website</h2></marquee>
    <div class="container">
        <!-- Include User Login/Signup -->
        <div class="row">
            <div class="col-md-6">
                <jsp:include page="User.jsp" />
            </div>
            <!-- Include Admin Login -->
            <div class="col-md-6">
                <jsp:include page="Admin.jsp" />
            </div>
        </div>
    </div>

    <script>
        // Fetch the content of navbar.html and inject it into the container
        fetch('navbar.html')
            .then(response => response.text())
            .then(data => {
                document.getElementById('navbarContainer').innerHTML = data;
            });
    </script>

</body>
</html>
