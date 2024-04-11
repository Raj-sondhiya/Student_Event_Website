<%@ include file="Database.jsp" %>
<%@ include file="Error.jsp" %>
<%
String name = request.getParameter("name");
String enrollNo = request.getParameter("enrollNo");
String course= request.getParameter("course");
String semester= request.getParameter("semester");
String contact = request.getParameter("contact");
String email = request.getParameter("email");

String qr = "insert into student values(?,?,?,?,?,?)";
PreparedStatement ps = con.prepareStatement(qr);
ps.setString(1,name);
ps.setString(2,enrollNo);
ps.setString(3, course);
ps.setString(4,semester);
ps.setString(5, contact);
ps.setString(6,email);

int i=ps.executeUpdate();
out.println("<script>");
if (i > 0) {
    // SweetAlert for success
    
    out.println("Swal.fire('Success!', 'Registration successfull.', 'success').then(() => { window.location.href = 'UserHome.jsp'; });");
    out.println("</script>");
} else {
    // SweetAlert for error
    out.println("<script>");
    out.println("Swal.fire('Error!', 'Failed to update event details.', 'error').then(() => { window.location.href = 'UserHome.jsp'; });");
}
    out.println("</script>");


%> 