<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Add event</title>
     <style>
        body {
            background-image: url('images/bg.jpg');
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
        }
        .container-fluid{
        	margin-top: -30px;
        }
    </style>
    </head>
<body>
	<%@page errorPage="error.jsp" %>
	<jsp:include page="CommonLinks.jsp" />
    <jsp:include page="navbar.html" />
    <h2 class="text-center">Add new event</h2>
    <div class="container-fluid">
        <div class="row justify-content-center">
            <div class="col-md-6">
                <div class="card mt-5">
                    <div class="card-header">
                        <h3 class="text-center">Enter event details</h3>
                    </div>
                    <div class="card-body">
                        <form action="SaveEvent.jsp" method="post">
                        
                        	<label for="serialNo">Event id:</label>
        					<input type="text" class="form-control" id="serialNo" name="serialNo" required><br>
                        	
       						<label for="eventName">Event Name:</label>
        					<input type="text" class="form-control" id="eventName" name="eventName" required><br>

        					<label for="description">Description:</label>
        					<textarea id="description" class="form-control" name="description" rows="5" required></textarea><br>

        					<label for="startDate">Start Date:</label>
        					<input type="date" class="form-control" id="startDate" name="startDate"><br>

        					<label for="endDate">End Date:</label>
        					<input type="date" class="form-control" id="endDate" name="endDate"><br>

        					<label for="coordinatorName">Coordinator Name:</label>
        					<input type="text" class="form-control" id="coordinatorName" name="coordinatorName" value="To be declared"><br>

					        <label for="coordinatorNumber">Coordinator Number:</label>
        					<input type="text" class="form-control" id="coordinatorNumber" name="coordinatorNumber"><br>

        					<label for="venue">Venue:</label>
        					<input type="text" class="form-control" id="venue" name="venue"><br>
        					
<!--         					<label for="eventImage">Event Image:</label>
                            <input type="file" class="form-control-file" id="eventImage" name="image"><br>
 -->
        					 <button type="submit" class="btn btn-primary btn-block">Save details</button>
    					</form>
        				<a class="btn btn-danger btn-block" href="EventList.jsp">Cancel</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>

</html>
