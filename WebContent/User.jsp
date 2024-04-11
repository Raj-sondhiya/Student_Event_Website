<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>User login</title>
     
</head>
<body>
<div class="container-fluid">
    <div class="row justify-content-center">
        <div class="col-md-12">
            <div class="card mt-5">
                <div class="card-header">
                    <h3 class="text-center">User Login</h3>
                </div>
                <div class="card-body">
                    <form action="Ulogin.jsp">
                        <div class="form-group">
                            <label for="email">Email:</label>
                            <input type="email" class="form-control" id="email" name="email" placeholder="Enter your email" required pattern="[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$">
                        </div>
                        <div class="form-group">
                            <label for="password">Password:</label>
                            <input type="password" class="form-control" id="password" name="password" placeholder="Enter your password" required>
                        </div>
                        <button type="submit" class="btn btn-primary btn-block">Login</button>
                    </form>
                    <p class="text-center">Or</p>
                    <button class="btn btn-primary btn-block" onclick="newUser()">Sign Up</button>
                </div>
            </div>
        </div>
    </div>
</div>

<script>
    function newUser() {
        window.location.href = 'NewUser.jsp';
    }
</script>

</body>
</html>
