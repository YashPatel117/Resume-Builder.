<%@ page import="javax.servlet.http.HttpSession" %>
<%@ page import="java.sql.*" %>
<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<% 
    Class.forName("com.mysql.jdbc.Driver");
    Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/resume", "root", "123456");
    String uname = request.getParameter("username");
    String query = "SELECT * FROM details WHERE username=?";
    PreparedStatement statement = connection.prepareStatement(query);
    statement.setString(1, uname);
    ResultSet resultSet = statement.executeQuery();
    
    if (resultSet.next()) {
        String fname = resultSet.getString("fname");
        String photo = resultSet.getString("photo");
        String username = resultSet.getString("username");
        session.setAttribute("username", username);
%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Select resume</title>
    <style>
        body {
            margin: 0;
            padding: 30px;
            font-family: Arial, sans-serif;
            background: linear-gradient(to bottom, #0f0c29, #302b63, #24243e);
            color: white;
        }

        h1 {
            margin-top: 0;
        }

        table {
            width: 100%;
        }

        td {
            padding: 10px;
        }

        img {
            max-width: 100%;
            height: auto;
            border-radius: 10px;
            cursor: pointer;
            transition: transform 0.3s ease;
        }

        img:hover {
            transform: scale(1.05);
        }
    </style>
</head>
<body>
    <h1>Hello <%= fname %></h1>
    <h1>Select the template</h1>
    <table>
        <tr>
            <td>
                <a href="1.jsp"><img src="1.png"></a>
            </td>
            <td>
                <a href="2.jsp"><img src="2.png"></a>
            </td>
            <td>
                <a href="3.jsp"><img src="3.png"></a>
            </td>
        </tr>
    </table>
</body>
</html>
<%
    } 
%>
