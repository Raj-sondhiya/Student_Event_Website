<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Admin login</title>
    </head>
<body>
	<%@page errorPage="error.jsp" %>
    <div class="container-fluid">
        <div class="row justify-content-center">
            <div class="col-md-12">
                <div class="card mt-5">
                    <div class="card-header">
                        <h3 class="text-center">Admin Login</h3>
                    </div>
                    <div class="card-body">
                        <form action="Alogin.jsp">
                            <div class="form-group">
                                <label for="email">Email:</label>
                                <input type="email" class="form-control" id="adminemail" name="adminemail" placeholder="Enter your email" required pattern="[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$">
                                <small class="form-text text-muted">Please enter a valid email address.</small>
                            </div>
                            <div class="form-group">
                                <label for="password" class="my-4">Password:</label>
                                <input type="password" class="form-control" id="adminpassword" name="adminpassword" placeholder="Enter your password" required>
                            </div>
                            <button type="submit" class="btn btn-primary btn-block my-3">Login</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
