<%@page errorPage="Error.jsp" %>
<%@include file="Database.jsp"%>
<%@include file="CommonLinks.jsp"%>
<%@page import="java.sql.ResultSet"%>
<% 
String email = request.getParameter("email");
String password = request.getParameter("password");
String query = "SELECT * FROM user WHERE email=? AND password=?";
PreparedStatement ps = con.prepareStatement(query);
ps.setString(1, email);
ps.setString(2, password);

// Assuming user table has columns: fname, lname, email, password

ResultSet rs = ps.executeQuery();

if (rs.next()) {
    // User exists, redirect to UserHome.jsp
    response.sendRedirect("UserHome.jsp");
} else {
	%>
    <script>
        Swal.fire({
            icon: 'error',
            title: 'Oops...',
            text: 'Enter correct id and password',
        }).then(function() {
            // Redirect after the user acknowledges the alert
            window.location.href = "User.jsp";
        });
    </script>
<%
}
con.close();
%>
