<%@page errorPage="error.jsp" %>
<%@ include file="Database.jsp" %>
<jsp:include page="CommonLinks.jsp" />
<jsp:include page="navbar.html" />

<html>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Registered Events</title>
</head>

<body>
    <div class="container">
        <h2 align=center>Registered Events</h2>
        <div class="row">
            <% 
            // Get the logged-in user's email from your session or authentication mechanism
            String userEmail = (String) session.getAttribute("loggedInUserEmail"); // Example: Replace with your session attribute name
            
            // Check if the logged-in user's email is available
            if (userEmail != null && !userEmail.isEmpty()) {
                // Fetch registered events for the logged-in user
                String query = "SELECT re.*, e.* FROM registered_event re INNER JOIN events e ON re.serialNo = e.serialNo WHERE re.email = ?";
                PreparedStatement ps = con.prepareStatement(query);
                ps.setString(1, userEmail);
                ResultSet rs = ps.executeQuery();
                
                // Check if there are registered events
                boolean hasRegisteredEvents = rs.next();
                
                // If there are no registered events, display a message
                if (!hasRegisteredEvents) { %>
                    <div class="col-md-12">
                        <div class="alert alert-info" role="alert">
                            No registered events.
                        </div>
                    </div>
                <% } else { 
                    // If there are registered events, display event details in cards
                    do {
                %>
                <div class="col-lg-4 col-md-6 my-2">
                    <div class="card" style="width: 22rem;">
                        <div class="card-body">
                            <h5 class="card-title">
                                <%= rs.getString("eName") %>
                            </h5>
                            <p class="card-text">
                                <%= rs.getString("description") %>
                            </p>
                        </div>
                        <ul class="list-group list-group-flush">
                            <li class="list-group-item">Start date: <%= rs.getDate("sDate") %>
                            </li>
                            <li class="list-group-item">End date: <%= rs.getDate("eDate") %>
                            </li>
                            <li class="list-group-item">Coordinator name: <%= rs.getString("coordinatorName") %>
                            </li>
                            <li class="list-group-item">Coordinator number: <%= rs.getLong("coordinatorNumber") %>
                            </li>
                            <li class="list-group-item">Venue: <%= rs.getString("venue") %>
                            </li>
                        </ul>
                    </div>
                </div>
                <% 
                    } while (rs.next()); // Loop through all registered events
                } // End if-else block
                rs.close(); 
                ps.close(); 
            } else {
                // If the user is not logged in or the email is not available in the session, display a message
            %>
            <div class="col-md-12">
                <div class="alert alert-warning" role="alert">
                    Please log in to view registered events.
                </div>
            </div>
            <% } // End if-else block %>
        </div>
    </div>
</body>

</html>
