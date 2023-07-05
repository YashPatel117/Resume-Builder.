<%@page import="java.sql.*" %>
<%@ page import="javax.servlet.http.HttpSession" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% 
    Class.forName("com.mysql.jdbc.Driver");
    Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/resume", "root", "123456");
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title></title>
    </head>
    <body>
        <% 
                String username = request.getParameter("username");
                String password = request.getParameter("password");
                session.setMaxInactiveInterval(-1);
                session.setAttribute("username", username);
                
                String sql = "SELECT * FROM details WHERE username = ?";
                PreparedStatement stmt = connection.prepareStatement(sql);
                stmt.setString(1, username);
                ResultSet rs = stmt.executeQuery();

                if (rs.next()) {
                    String dbPassword = rs.getString("password");
                    if (dbPassword.equals(password)) {
                        RequestDispatcher dispatcher = request.getRequestDispatcher("select.jsp");
                        dispatcher.forward(request, response);
                    } else {
                        %>
                        <script>alert("Incorrect Password");</script>
                        <jsp:include page="index.jsp"/>
            <%
                    }
                } else {
                    %>
                        <script>alert("Sign up");</script>
                        <jsp:include page="index.jsp"/>
            <%
                }

        %>
    </body>
</html>
