<jsp:include page="CommonLinks.jsp" />
<jsp:include page="navbar.html" />
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Student registration</title>
</head>
	<body>	
		<div class="container-fluid">
        <div class="row justify-content-center">
            <div class="col-md-6">
                <div class="card mt-5">
                    <div class="card-header">
                        <h3 class="text-center">Event registration</h3>
                    </div>
                    <div class="card-body">
                        <form action="SaveRegister.jsp">
                        	    <input type="hidden" name="serialNo" value="<%= request.getParameter("serialNo") %>">
                        	<div class="form-group">
                                <label for="name">Full name:</label>
                                <input type="text" class="form-control" id="name" name="name" placeholder="Enter your name" required>
                            </div>
                            <div class="form-group">
                                <label for="name">Enrollment number:</label>
                                <input type="text" class="form-control" id="enrollNo" name="enrollNo" placeholder="Enter enrollment number" required>
                            </div>
                            <div class="form-group">
                                <label for="name">Course:</label>
                                <input type="text" class="form-control" id="course" name="course" placeholder="Enter your course" required>
                            </div>
                            <div class="form-group">
                                <label for="name">Semester:</label>
                                <input type="text" class="form-control" id="semester" name="semester" placeholder="Enter your semester" required>
                            </div>
                            <div class="form-group">
                                <label for="name">Contact number:</label>
                                <input type="text" class="form-control" id="contact" name="contact" placeholder="Enter contact number" required>
                            </div>                            
                            <div class="form-group">
                                <label for="email">Email:</label>
                                <input type="email" class="form-control" id="email" name="email" placeholder="Enter your email" required pattern="[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$">
                                <small class="form-text text-muted">Please enter a valid email address.</small>
                            </div>
                            <button type="submit" class="btn btn-primary btn-block">Save</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
		
	</body>
</html>