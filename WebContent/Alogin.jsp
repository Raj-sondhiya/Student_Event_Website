<jsp:include page="CommonLinks.jsp" />
<%@page errorPage="error.jsp" %>
<%
String id = request.getParameter("email");
String pwd = request.getParameter("password");

if (id.equals("superadmin@sage.com") && pwd.equals("admin123")) {
    response.sendRedirect("EventList.jsp");
} else {
%>
    <script>
        Swal.fire({
            icon: 'error',
            title: 'Oops...',
            text: 'Enter correct id and password',
        }).then(function() {
            window.location.href = "Admin.jsp";
        });
    </script>
<%
}
%>