<%@ include file="Database.jsp" %>
<%@ include file="CommonLinks.jsp" %>
<%
    int serialNo = Integer.parseInt(request.getParameter("serialNo"));
    String eventName = request.getParameter("eventName");
    String description = request.getParameter("description");
    Date startDate = Date.valueOf(request.getParameter("startDate"));
    Date endDate = Date.valueOf(request.getParameter("endDate"));
    String coordinatorName = request.getParameter("coordinatorName");
    String coordinatorNumber = request.getParameter("coordinatorNumber");
    String venue = request.getParameter("venue");

    String updateQuery = "UPDATE events SET eName=?, description=?, sDate=?, eDate=?, coordinatorName=?, coordinatorNumber=?, venue=? WHERE serialNo=?";
    PreparedStatement ps = con.prepareStatement(updateQuery);
    ps.setString(1, eventName);
    ps.setString(2, description);
    ps.setDate(3, startDate);
    ps.setDate(4, endDate);
    ps.setString(5, coordinatorName);
    ps.setString(6, coordinatorNumber);
    ps.setString(7, venue);
    ps.setInt(8, serialNo);

    int rowsUpdated = ps.executeUpdate();

    if (rowsUpdated > 0) {
        // SweetAlert for success
        out.println("<script>");
        out.println("Swal.fire('Success!', 'Event details updated successfully.', 'success').then(() => { window.location.href = 'EventList.jsp'; });");
        out.println("</script>");
    } else {
        // SweetAlert for error
        out.println("<script>");
        out.println("Swal.fire('Error!', 'Failed to update event details.', 'error').then(() => { window.location.href = 'EventList.jsp'; });");
        out.println("</script>");
    }

    ps.close();
%>
