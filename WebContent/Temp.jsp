<%@ page import="javax.servlet.http.HttpSession" %>
<%@ page import="javax.servlet.http.HttpServletRequest" %>
<%@ page import="javax.servlet.ServletContext" %>
<%@ page import="java.io.PrintWriter" %>
<%@ page import="java.io.IOException" %>

<%
    // HttpSession session = request.getSession(); // Remove this line if not necessary
    
    // Get the logged-in user's email from the session attribute
    String userEmail = (String) request.getSession().getAttribute("loggedInUserEmail");
    
    // Check if the email is not null and not empty
    if (userEmail != null && !userEmail.isEmpty()) {
        out.println("Logged-in user email: " + userEmail);
    } else {
        out.println("No user is logged in.");
    }
%>
