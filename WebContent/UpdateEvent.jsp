<%@ include file="Database.jsp" %>
<jsp:include page="CommonLinks.jsp" />
<jsp:include page="navbar.html" />

<%
    // Retrieve values from the form
    String eventId = request.getParameter("eventId");
    String eventName = request.getParameter("eventName");
    String description = request.getParameter("description");
    Date startDate = Date.valueOf(request.getParameter("startDate"));
    Date endDate = Date.valueOf(request.getParameter("endDate"));
    String coordinatorName = request.getParameter("coordinatorName");
    String coordinatorNumber = request.getParameter("coordinatorNumber");
    String venue = request.getParameter("venue");
%>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Update Event</title>
    <style>
        body {
            background-image: url('images/bg.jpg');
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
        }

        .container-fluid {
            margin-top: -30px;
        }
    </style>
</head>

<body>
    <h2 class="text-center">Update Event</h2>
    <div class="container-fluid">
        <div class="row justify-content-center">
            <div class="col-md-6">
                <div class="card mt-5">
                    <div class="card-header">
                        <h3 class="text-center">Update Event Details</h3>
                    </div>
                    <div class="card-body">
                        <form action="SaveUpdate.jsp" method="post">
                            <input type="hidden" name="eventId" value="<%= eventId %>">
                            <label for="eventName">Event Name:</label>
                            <input type="text" class="form-control" id="eventName" name="eventName" value="<%= eventName %>" required><br>

                            <label for="description">Description:</label>
                            <textarea id="description" class="form-control" name="description" rows="4" required><%= description %></textarea><br>

                            <label for="startDate">Start Date:</label>
                            <input type="date" class="form-control" id="startDate" name="startDate" value="<%= startDate %>"><br>

                            <label for="endDate">End Date:</label>
                            <input type="date" class="form-control" id="endDate" name="endDate" value="<%= endDate %>"><br>

                            <label for="coordinatorName">Coordinator Name:</label>
                            <input type="text" class="form-control" id="coordinatorName" name="coordinatorName" value="<%= coordinatorName %>" required><br>

                            <label for="coordinatorNumber">Coordinator Number:</label>
                            <input type="text" class="form-control" id="coordinatorNumber" name="coordinatorNumber" value="<%= coordinatorNumber %>"><br>

                            <label for="venue">Venue:</label>
                            <input type="text" class="form-control" id="venue" name="venue" value="<%= venue %>"><br>

                            <button type="submit" class="btn btn-primary btn-block">Update Details</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>

</html>
