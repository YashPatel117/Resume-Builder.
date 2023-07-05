<%@page import="java.sql.*" %>
<jsp:include page="data.jsp" />
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% 
    Class.forName("com.mysql.jdbc.Driver");
    Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/resume", "root", "123456");
%>
<!DOCTYPE html>
<html>
<head>
    <title>Resume Form</title>
    <style>
body {
  font-family: 'Jost', sans-serif;
  background: linear-gradient(to bottom, #0f0c29, #302b63, #24243e);
}

.main {
  width: 800px;
  margin: 0 auto;
  padding: 20px;
  background-color: #fff;
  font-family: 'Jost', sans-serif;
  box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

table {
  width: 100%;
  border-collapse: collapse;
}

td {
  padding: 10px;
  vertical-align: middle;
  border-bottom: 1px solid #ddd;
}
button{
	width: 100px;
	height: 40px;
	margin: 10px auto;
	justify-content: center;
	display: block;
	color: #fff;
	background: #573b8a;
	font-size: 1em;
	font-weight: bold;
	margin-top: 20px;
	outline: none;
	border: none;
	border-radius: 5px;
	transition: .2s ease-in;
	cursor: pointer;
}
button:hover{
	background: #6d44b8;
}

input[type="text"],
input[type="number"],
input[type="email"],
textarea,
select {
  width: 100%;
  padding: 8px;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
}

input[type="submit"],
input[type="reset"] {
  background-color: #4caf50;
  color: #fff;
  border: none;
  padding: 10px 20px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  border-radius: 4px;
  cursor: pointer;
}

input[type="submit"]:hover,
input[type="reset"]:hover {
  background-color: #45a049;
}

label {
  font-size: 14px;
  color: #666;
  padding-left: 30%;
}

textarea {
  width: 100%;
  padding: 8px;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
  resize: vertical;
}

option {
  font-size: 14px;
}

input[type="file"] {
  display: block;
  margin-top: 10px;
}

input[type="file"]::-webkit-file-upload-button {
  background: #573b8a;
  color: #fff;
  border: none;
  padding: 10px 20px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  border-radius: 4px;
  cursor: pointer;
}

input[type="file"]::-webkit-file-upload-button:hover {
  background: #6d44b8;
}

input[type="file"]::-webkit-file-upload-button:active {
  background-color: #3e8e41;
}

    </style>
</head>
<body>
    <div class="main">
    <form action="Add" method="post" enctype="multipart/form-data">
        <table>
            <p>Hello , <%= request.getAttribute("username")%>!!!<input type="hidden" value="<%= request.getAttribute("username")%>" name="username"></p>
            <tr>
                <td>Full Name:</td>
            </tr>
            <tr>
                <td><input type="text" name="fname" value="<%= request.getAttribute("fname") %>" id="fname"><br><label for="fname" style="font-size: 60%; padding-left: 30%;">First Name</label></td>
                <td><input type="text" name="lname" value="<%= request.getAttribute("lname") %>" id="lname"><br><label for="lame" style="font-size: 60%; padding-left: 30%;">Last Name</label></td>
            </tr>
            <tr>
                <td>Job:</td>
                <td>
                    <select name="job" id="job">
                        <option value="Web Developer">Web Developer</option>
                        <option value="Application Developer">Application Developer</option>
                    </select>
                </td>
            </tr>
            <tr>
                <td>Education:</td>
                <td>
                    <input type="text"  value="<%= request.getAttribute("edu") %>" name="edu" id="myTextarea1"  maxlength="42" style="color: gray;">
                </td>
            </tr>
            <tr>
                <td>Course Time:</td>
                <td>From: <input type="number" value="<%= request.getAttribute("cf") %>"   name="cf" style="width: 70px;"></td>
                <td>To: <input type="number"  value="<%= request.getAttribute("ct") %>"  name="ct" style="width: 70px;"></td>
            </tr>
            <tr>
                <td>About Course:</td>
                <td><textarea name="course" id="myTextarea2" cols="30" rows="4" maxlength="235"><%= request.getAttribute("course") %></textarea></td>
            </tr>
            <tr>
                <td>Work Experience:</td>
                <td>1) From: <input type="number" value="<%= request.getAttribute("wf1") %>"   name="wf1" style="width: 70px;"> &nbsp; 
                    To: <input type="number"  value="<%= request.getAttribute("wt1") %>"  style="width: 70px;" name="wt1"></td>
                <td rowspan="2"><textarea name="we1" id="myTextarea3" cols="30" rows="4"><%= request.getAttribute("we1") %></textarea></td>
            </tr>
            <tr>
                <td></td>
                <td>Company Name: <input type="text" value="<%= request.getAttribute("cn1") %>"  name="cn1" id="myTextarea1"></td>
            </tr>
            <tr>
                <td></td>
                <td>2) From: <input type="number"  value="<%= request.getAttribute("wf2") %>" name="wf2"  style="width: 70px;">&nbsp; 
                    To <input type="number"  value="<%= request.getAttribute("wt2") %>" style="width: 70px;" name="wt2"></td>
                <td rowspan="2"><textarea name="we2"  id="myTextarea3" cols="30" rows="4"><%= request.getAttribute("we2") %></textarea></td>
            </tr>
            <tr>
                <td></td>
                <td>Company Name: <input type="text" value="<%= request.getAttribute("cn2") %>"  name="cn2" id="myTextarea1"></td>
            </tr>
            <tr>
                <td>Address:</td>
                <td><textarea name="address"  id="myTextarea4" cols="30" rows="4"><%= request.getAttribute("address") %></textarea></td>
            </tr>
            <tr>
                <td>Mobile No.</td>
                <td><input type="number"  value="<%= request.getAttribute("mo") %>" name="mo"></td>
            </tr>
            <tr>
                <td>E-mail:</td>
                <td><input type="email"  value="<%= request.getAttribute("email") %>" name="email"></td>
            </tr>
            <tr>
                <td rowspan="4">Skills:<br>(Any Four)</td>
                <td>1) <input type="text"  value="<%= request.getAttribute("sk1") %>" name="sk1"> <input type="text"  value="<%= request.getAttribute("sk1p") %>" name="sk1p" style="width: 40px;"> (out of 100%)</td>
            </tr>
            <tr>
                <td>2) <input type="text" value="<%= request.getAttribute("sk2") %>"  name="sk2"> <input type="text"  value="<%= request.getAttribute("sk2p") %>" name="sk2p" style="width: 40px;"> (out of 100%)</td>
            </tr>
            <tr>
                
                <td>3) <input type="text"  value="<%= request.getAttribute("sk3") %>" name="sk3"> <input type="text"  value="<%= request.getAttribute("sk3p") %>" name="sk3p" style="width: 40px;"> (out of 100%)</td>
            </tr>
            <tr>
                <td>4) <input type="text"  value="<%= request.getAttribute("sk4") %>" name="sk4"> <input type="text"  value="<%= request.getAttribute("sk4p") %>" name="sk4p" style="width: 40px;"> (out of 100%)</td>
            </tr>
            <tr>
                <td rowspan="2">Language:<br>(Any Two)</td>
                <td>1) <input type="text"  value="<%= request.getAttribute("l1") %>" name="l1"></td>
            </tr>
            <tr>
                <td>2) <input type="text"  value="<%= request.getAttribute("l2") %>" name="l2"></td>
            </tr>
            <tr>
                <td>About Yourself</td>
                <td><textarea name="profile"  id="myTextarea4" cols="30" rows="4"><%= request.getAttribute("profile") %></textarea></td>
            </tr>
            <tr>
                <td>Upload Image:</td>
                <td><input type="file" name="photo"  required="required"></td>
            </tr>
            <tr>
                <td><button type="submit" >Submit</button></td>
                <td><button type="reset" >Clear</button></td>
            </tr>
        </table>
    </form></div>
</body>
</html>
