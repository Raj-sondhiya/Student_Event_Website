<%@ include file="Database.jsp" %>
<jsp:include page="CommonLinks.jsp" />
<jsp:include page="navbar.html" />

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Event List</title>
</head>

<body>
    <div class="container">
<a class="btn btn-danger btn-sm my-2" href="AddEvent.jsp">Add New event</a>
        <h2>Event List</h2>
        <table  id="eventTable" class="table table-bordered table-hover">
            <thead>
                <tr>
                    <th>Serial No</th>
                    <th>Event Name</th>
                    <th>Description</th>
                    <th>Start Date</th>
                    <th>End Date</th>
                    <th>Coordinator Name</th>
                    <th>Coordinator Number</th>
                    <th>Venue</th>
                    <th>Action</th>
                </tr>
            </thead>
            <tbody>
                <%
                    String query = "SELECT * FROM events";
                    PreparedStatement ps = con.prepareStatement(query);
                    ResultSet rs = ps.executeQuery();

                    while (rs.next()) {
                        int serialNo = rs.getInt("serialNo");
                        String eventName = rs.getString("eName");
                        String description = rs.getString("description");
                        Date startDate = rs.getDate("sDate");
                        Date endDate = rs.getDate("eDate");
                        String coordinatorName = rs.getString("coordinatorName");
                        String coordinatorNumber = rs.getString("coordinatorNumber");
                        String venue = rs.getString("venue");
                %>
                        <tr>
                            <td><%= serialNo %></td>
                            <td><%= eventName %></td>
                            <td><%= description %></td>
                            <td><%= startDate %></td>
                            <td><%= endDate %></td>
                            <td><%= coordinatorName %></td>
                            <td><%= coordinatorNumber %></td>
                            <td><%= venue %></td>
                             <td>
                                <form action="UpdateEvent.jsp" method="post">
                                    <input type="hidden" name="serialNo" value="<%= serialNo %>">
                                    <input type="hidden" name="eventName" value="<%= eventName %>">
                                    <input type="hidden" name="description" value="<%= description %>">
                                    <input type="hidden" name="startDate" value="<%= startDate %>">
                                    <input type="hidden" name="endDate" value="<%= endDate %>">
                                    <input type="hidden" name="coordinatorName" value="<%= coordinatorName %>">
                                    <input type="hidden" name="coordinatorNumber" value="<%= coordinatorNumber %>">
                                    <input type="hidden" name="venue" value="<%= venue %>">
                                    <button type="submit" class="btn btn-warning btn-sm my-2">Update</button>
                                </form>
                                 <a class="btn btn-danger btn-sm" href="DelEvent.jsp?serialNo=<%= serialNo %>">Delete</a>
                            </td> 
                        </tr>
                <%
                    }
                %>
            </tbody>
        </table>
    </div>
    
      <script>
        // Initialize DataTable
        $(document).ready(function() {
            $('#eventTable').DataTable();
        });
    </script>
    
</body>

</html>
