<%@ page import="javax.servlet.http.HttpSession" %>
<%@ page import="java.sql.*" %>
<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<% 
    Class.forName("com.mysql.jdbc.Driver");
    Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/resume", "root", "123456");
    String username = (String) session.getAttribute("username");
    String query = "SELECT * FROM details WHERE username=?";
    PreparedStatement statement = connection.prepareStatement(query);
    statement.setString(1, username);
    ResultSet resultSet = statement.executeQuery();
    
    if (resultSet.next()) {
        request.setAttribute("username", resultSet.getString("username"));    
        request.setAttribute("fname", resultSet.getString("fname"));
        request.setAttribute("lname", resultSet.getString("lname"));
        request.setAttribute("job", resultSet.getString("job"));
        request.setAttribute("edu", resultSet.getString("edu"));
        request.setAttribute("cf", resultSet.getString("cf"));
        request.setAttribute("ct", resultSet.getString("ct"));
        request.setAttribute("course", resultSet.getString("course"));
        request.setAttribute("wf1", resultSet.getString("wf1"));
        request.setAttribute("wt1", resultSet.getString("wt1"));
        request.setAttribute("we1", resultSet.getString("we1"));
        request.setAttribute("cn1", resultSet.getString("cn1"));
        request.setAttribute("wf2", resultSet.getString("wf2"));
        request.setAttribute("wt2", resultSet.getString("wt2"));
        request.setAttribute("we2", resultSet.getString("we2"));
        request.setAttribute("cn2", resultSet.getString("cn2"));
        request.setAttribute("address", resultSet.getString("address"));
        request.setAttribute("mo", resultSet.getString("mo"));
        request.setAttribute("email", resultSet.getString("email"));
        request.setAttribute("sk1", resultSet.getString("sk1"));
        request.setAttribute("sk1p", resultSet.getString("sk1p"));
        request.setAttribute("sk2", resultSet.getString("sk2"));
        request.setAttribute("sk2p", resultSet.getString("sk2p"));
        request.setAttribute("sk3", resultSet.getString("sk3"));
        request.setAttribute("sk3p", resultSet.getString("sk3p"));
        request.setAttribute("sk4", resultSet.getString("sk4"));
        request.setAttribute("sk4p", resultSet.getString("sk4p"));
        request.setAttribute("l1", resultSet.getString("l1"));
        request.setAttribute("l2", resultSet.getString("l2"));
        request.setAttribute("photo", resultSet.getString("photo"));
        request.setAttribute("profile", resultSet.getString("profile"));

            } 
%>