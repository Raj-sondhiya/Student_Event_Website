<%@page errorPage="Error.jsp" %>
<%@ include file="Database.jsp" %>
<%@ include file="CommonLinks.jsp" %>>
<jsp:include page="navbar.html" />
<%
String eventId = request.getParameter("eventId");

String qr = "delete from events where serialNo=?";
PreparedStatement ps = con.prepareStatement(qr);

ps.setString(1, eventId);
int i=ps.executeUpdate();
if (i > 0) {
    // SweetAlert for success
    out.println("<script>");
    out.println("Swal.fire('Success!', 'Event deleted successfully.', 'success').then(() => { window.location.href = 'EventList.jsp'; });");
    out.println("</script>");
} else {
    // SweetAlert for error
    out.println("<script>");
    out.println("Swal.fire('Error!', 'Failed to delete event details.', 'error').then(() => { window.location.href = 'EventList.jsp'; });");
    out.println("</script>");
}

ps.close();
%>    
