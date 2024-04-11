<%@page isErrorPage="true" %>
<%@ page import="java.io.*" %>
<jsp:include page="CommonLinks.jsp" />

<%
Exception e = (Exception) request.getAttribute("javax.servlet.error.exception");
String errorMessage = (e != null) ? exception.getMessage() : "Unknown error";
%>

<html>
<head>
    <title>Error Page</title>
</head>
<body>

<script>
    Swal.fire({
        icon: 'error',
        title: 'Error',
        text: '<%= errorMessage %>',
    }).then(function() {
        window.location.href = "index.jsp"; // Redirect to a page after displaying the error
    });
</script>

</body>
</html>
