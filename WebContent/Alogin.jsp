<jsp:include page="CommonLinks.jsp" />
<%@page errorPage="error.jsp" %>
<%
String id = request.getParameter("adminemail");
String pwd = request.getParameter("adminpassword");

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
            window.location.href = "index.jsp";
        });
    </script>
<%
}
%>