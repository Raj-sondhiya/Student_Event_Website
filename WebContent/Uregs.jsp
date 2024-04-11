<%@page errorPage="Error.jsp" %>
<%@include file="Database.jsp"%>
<% 
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
if(i>0)
{
	out.println("<script>window.alert('Signup successfully')</script>");
	response.sendRedirect("User.jsp");
}
else
{
	out.println("<script>window.alert('Something went wrong')</script>");
}
con.close();
%>