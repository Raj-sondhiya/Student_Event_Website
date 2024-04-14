<%@page errorPage="error.jsp" %>
<%@ include file="Database.jsp" %>
<jsp:include page="CommonLinks.jsp" />
<jsp:include page="navbar.html" />

<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>User home</title>
</head>
<body>
   
    <div class="container">
        <h2 align=center>Welcome to user home</h2>
        <div class="row">
            <% String query = "select * from events";
               PreparedStatement ps = con.prepareStatement(query);
               ResultSet rs = ps.executeQuery();
               while (rs.next()) {
            %>
            <div class="col-lg-4 col-md-6 my-2">
                <div class="card" style="width: 22rem;">
                    <img class="card-img-top" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRLj7sv2AKeEqhf0r3rbO9PS9pl9ZYCNLdLZmmnNjVmMA&s.jpg" alt="Card image cap">
                    <div class="card-body">
                        <h5 class="card-title"><%= rs.getString("eName") %></h5>
                        <p class="card-text"><%= rs.getString("description") %></p>
                    </div>
                    <ul class="list-group list-group-flush">
                        <li class="list-group-item">Start date: <%= rs.getDate("sDate") %></li>
                        <li class="list-group-item">End date: <%= rs.getDate("eDate") %></li>
                        <li class="list-group-item">Coordinator name: <%= rs.getString("coordinatorName") %></li>
                        <li class="list-group-item">Coordinator number: <%= rs.getInt("coordinatorNumber") %></li>
                        <li class="list-group-item">Venue: <%= rs.getString("venue") %></li>
                    </ul>
                    <div class="card-body">
                        <a class="btn btn-danger btn-sm" href="Register.jsp">Register</a>
                    </div>
                </div>
            </div>
            <% }
               rs.close();
               ps.close();
            %>
        </div>
    </div>
</body>
</html>
