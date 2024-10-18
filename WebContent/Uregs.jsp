<%@page errorPage="Error.jsp" %>
<%@include file="Database.jsp"%>
<jsp:include page="CommonLinks.jsp" />
<% 
try{
	

String fname= request.getParameter("fname");
String lname= request.getParameter("lname");
String email= request.getParameter("email");
String password= request.getParameter("password");
String qr = "insert into user values(?,?,?,?)";
PreparedStatement ps=con.prepareStatement(qr);
ps.setString(1, fname);
ps.setString(2, lname);
ps.setString(3, email);
ps.setString(4, password);
int i = ps.executeUpdate();
if(i > 0) {
%>
    <script>
        Swal.fire({
            icon: 'success',
            title: 'Success',
            text: 'Signup successfully you can login now',
        }).then(function() {
            window.location.href = "index.jsp";
        });
    </script>
<%
} else {
%>
    <script>
        Swal.fire({
            icon: 'error',
            title: 'Oops...',
            text: 'Something went wrong',
        }).then(function() {
            window.location.href = "index.jsp";
        });
    </script>
<%
}
con.close();
}catch(Exception e){
	String errorMessage = e.getMessage().replace("'", "\\'"); // Escape single quotes

    %>
    <script>
        Swal.fire({
            icon: 'error',
            title: 'Error: <%= errorMessage %>',
        }).then(function() {
            window.location.href = "index.jsp"; // Redirect to the add event page
        });
    </script>
    <%
}
%>
