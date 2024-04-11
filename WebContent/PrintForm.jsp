<!DOCTYPE html>
<html>
<head>
    <title>Display Information</title>
</head>
<body>
    <h2>Information Submitted</h2>
    <%
        String id = request.getParameter("serialNo");
        String eventName = request.getParameter("eventName");
        String description = request.getParameter("description");
        String coordinator=request.getParameter("coordinatorName");
    %>
    <p>Event id: <%= id %></p>
    <p>Event name: <%= eventName %></p>
    <p>Description: <%= description %></p>
    <p>coordinator Name: <%= coordinator %></p>
</body>
</html>
