<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="data.jsp" />


<!DOCTYPE html>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Resume</title>
        <style>
           
            body {
                display: flex;
                flex-direction: column;
                align-items: center;
                background: linear-gradient(to bottom, #0f0c29, #302b63, #24243e); 
                background-attachment: fixed;
                margin-top: 0px;
            }
            p , li{
                word-wrap: break-word;
                margin-right: 10px;
            }
        button {
            background-color: #a1a5eb66;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 16px;
            float: left;
                height: 50.4px;
        }

        button:hover {
           background: linear-gradient(to bottom, #0f0c29, #302b63, #24243e); 
        }
        .navbar{
            width: 700px;
            font-family: 'Trebuchet MS', sans-serif;
            display: flex;
            justify-content: space-around;
            border: 0px solid black;
            box-shadow: 5px 20px 50px #000;
            background: #a1a5eb;
            border-bottom-left-radius: 10px;
            border-bottom-right-radius: 10px;
        }
        .main{
            
            height: 730px;
            background-color: rgb(0, 0, 0);
            font-family: 'Trebuchet MS', sans-serif;
            float: left;
        }
        .d12{
            width: 300px;
            height: 730px;
            float: left;
        }
        .d0{
            width: 300px;
            height: 100px;
        }
        .d00{
            width: 100px;
            height: 20px;
            background-color: rgb(244 192 71 / 99%);
        }
        .d1{
            height: 300px;
            width: 300px;
        }
        .d2{
            width: 300px;
            height: 330px;
            background-color: rgb(244 192 71 / 99%) ;
            padding-left: 10%;
            line-height: 1.6;
        }
        .d34{
            width: 220px;
            height: 730px;
            float: left;
        }
        .do{
            width: 220px;
            height: 200px;
        }
        .d3{
            width: 220px;
            height: 360px;
            background-color: white;
            padding-left: 1%;
        }
        .d4{
            width: 220px;
            height: 170px;
            background-color: rgb(0, 0, 0);
            color: white;
        }
        .dot {
            height: 12px;
            width: 12px;
            background-color: rgb(255, 255, 255);
            border-radius: 50%;
            display: inline-block;
        }
        .dot1 {
            height: 12px;
            width: 12px;
            background-color: rgb(0, 0, 0);
            border-radius: 50%;
            display: inline-block;
        }
        .progress-bar {
            width: 135px;
            height: 10px;
            background-color: #ddd;
            border-radius: 15px;
        }

        .progress {
            height: 100%;
            background-color: gray;
            border-radius: 15px;
        }
    </style>
    </head>
    <body>
        <div class="navbar">
            <form action="Edit.jsp"><button type="submit">Edit</button></form>
            <button onclick="downloadResume()">Download Resume</button>
            <P><%= request.getAttribute("username") %></P>
            </div>
        <div class="main">
            <div class="d12">
                <div class="d0" style="color: white; text-align: right;">
                    <div class="d00"> </div> <br><br><br> <%= request.getAttribute("job") %>
                </div>
                <div class="d1">
                    <div style="background-color: black; height: 20px; width:
                        200px; position: absolute; margin-top: 280px; color:
                        white; text-align: center;">About Me</div>
<img src="<%= request.getAttribute("photo") %>?timestamp=<%= System.currentTimeMillis() %>" style="width:100%; height:100%; color: aqua;" alt="IMAGE NOT FOUND">
                </div>
                <div class="d2">
                    <br><br>
                    <b>SKIILS</b><br>
                    <table>
                        <tr>
                            <td><%= request.getAttribute("sk1") %></td>
                            <td>&nbsp;</td>
                            <td>
                            <div class="progress-bar">
                                <div class="progress" style="width: <%= request.getAttribute("sk1p") %>%"></div>
                            </div>
                            </td>
                        </tr>
                        <tr>
                            <td><%= request.getAttribute("sk2") %></td>
                            <td>&nbsp;</td>
                            <td><div class="progress-bar">
                                <div class="progress" style="width: <%= request.getAttribute("sk2p") %>%"></div>
                            </div></td>
                        </tr>
                        <tr>
                            <td><%= request.getAttribute("sk3") %></td>
                            <td>&nbsp;</td>
                            <td><div class="progress-bar">
                                <div class="progress" style="width: <%= request.getAttribute("sk3p") %>%"></div>
                            </div></td>
                        </tr>
                        <tr>
                            <td><%= request.getAttribute("sk4") %></td>
                            <td>&nbsp;</td>
                            <td><div class="progress-bar">
                                <div class="progress" style="width: <%= request.getAttribute("sk4p") %>%"></div>
                            </div></td>
                        </tr>
                    </table>
                    <b>Language</b>
                    <br>&emsp;&nbsp;&nbsp;&nbsp;<%= request.getAttribute("l1") %>

                    <br>&emsp;&nbsp;&nbsp;&nbsp;<%= request.getAttribute("l2") %>

                </div>
            </div>
            <div class="d34">
                <div class="do" style="color: rgb(255, 255, 255); font-size:
                    50px; padding-left: 40px; text-size-adjust: 80%; "> <br><%= request.getAttribute("fname") %>
                    <br> <%= request.getAttribute("lname") %></div>
                <div class="d3">
                    <br>
                    <b style="font-size: 100%;">Education</b><br><br>
                    <i style="font-size: 80%;"><%= request.getAttribute("cf") %>-<%= request.getAttribute("ct") %></i><br>
                    <b style="font-size: 80%;"><%= request.getAttribute("edu") %></b>
                    <p style="font-size: 50%;"><%= request.getAttribute("course") %></p>
                    <br>
                    <b style="font-size: 100%;">Work Experience</b><br><br>
                    <i style="font-size: 80%;"><%= request.getAttribute("wf1") %>-<%= request.getAttribute("wt1") %></i><br>
                    <b style="font-size: 80%;"><%= request.getAttribute("cn1") %></b><br>
                    <p style="font-size: 50%;"><%= request.getAttribute("we1") %></p>
                    <i style="font-size: 80%;"><%= request.getAttribute("wf2") %>-<%= request.getAttribute("wt2") %></i><br>
                    <b style="font-size: 80%;"><%= request.getAttribute("cn2") %></b>
                    <p style="font-size: 50%;"><%= request.getAttribute("we2") %></p>

                </div>
                <div class="d4">
                    <br>
                    <b>CONTACT</b>
                    <ul>
                        <li style="font-size: 80%;"><%= request.getAttribute("address") %>.</li><br>
                        <li style="font-size: 80%;"><%= request.getAttribute("mo") %></li><br>
                        <li style="font-size: 80%;"><%= request.getAttribute("email") %></li><br>
                    </ul>
                </div>
            </div>
        </div>
        <script
            src="https://cdn.jsdelivr.net/npm/html2canvas@1.3.2/dist/html2canvas.min.js"></script>
        <script>
        function downloadResume() {
            var mainDiv = document.querySelector('.main');

            html2canvas(mainDiv).then(function(canvas) {
                var link = document.createElement('a');
                link.href = canvas.toDataURL('image/png');
                link.download = 'resume.png';
                link.click();
            });
        }
    </script>
    </body>
    
</html>