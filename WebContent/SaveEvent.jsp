<%@ page errorPage="Error.jsp" %>
<%@ include file="Database.jsp" %>
<%@ include file="CommonLinks.jsp" %>
<%@ page import="java.io.InputStream" %>

<%
String serialNo = request.getParameter("serialNo");
String eventName = request.getParameter("eventName");
String description = request.getParameter("description");
String startDate = request.getParameter("startDate");
String endDate = request.getParameter("endDate");
String coordinatorName = request.getParameter("coordinatorName");
String coordinatorNumber = request.getParameter("coordinatorNumber");
String venue = request.getParameter("venue");

String query = "INSERT INTO events (serialNo, eName, description, sDate, eDate, coordinatorName, coordinatorNumber, venue) VALUES (?, ?, ?, ?, ?, ?, ?, ?)";

try {
    PreparedStatement ps = con.prepareStatement(query);
    ps.setString(1, serialNo);
    ps.setString(2, eventName);
    ps.setString(3, description);
    ps.setString(4, startDate);
    ps.setString(5, endDate);
    ps.setString(6, coordinatorName);
    ps.setString(7, coordinatorNumber);
    ps.setString(8, venue);
    
    int rowsAffected = ps.executeUpdate();
    if (rowsAffected > 0) {
        %>
        <script>
            Swal.fire({
                icon: 'success',
                title: 'Event added successfully',
            }).then(function() {
                window.location.href = "EventList.jsp"; // Redirect to the event list page after successful addition
            });
        </script>
        <%
    } else {
        %>
        <script>
            Swal.fire({
                icon: 'error',
                title: 'Failed to add event',
            });
        </script>
        <%
    }

    ps.close();
    
} catch (Exception e) {
    String errorMessage = e.getMessage().replace("'", "\\'"); // Escape single quotes

    %>
    <script>
        Swal.fire({
            icon: 'error',
            title: 'Error: <%= errorMessage %>',
        }).then(function() {
            window.location.href = "AddEvent.jsp"; // Redirect to the add event page
        });
    </script>
    <%
}
%>
