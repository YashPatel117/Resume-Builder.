<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="data.jsp" />
<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">

		<style>
        /* Write CSS Here */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            background-color: rgb(253, 254, 255);
            display: flex;
            justify-content: center;
            align-items: center;
            margin-top:  10px;
        }

        .full {
            width: 100%;
            max-width: 800px;
            min-height: 100px;
            background-color: rgb(245, 239, 231);
            margin: 0px;
            display: grid;
            grid-template-columns: 2fr 4fr;
            position: relative;
        }

        .left {
            position: initial;
            padding: 20px;
            background-color: #62CDFF;
        }

        .right {
            position: initial;
            background-color: #C9EEFF;
            padding: 20px;
        }

        .name {
            margin-bottom: 10px;
            margin-top: -15px;
            color: #fff;
            font-size: 24px;
            font-weight: bold;
        }

        .image {
            margin-bottom: 20px;
        }

        .image img {
            width: 100px;
            height: 100px;
            border-radius: 50%;
        }

        .Contact h2,
        .Skills h2,
        .Language h2,
        .Hobbies h2,
        .Summary h2,
        .Education h2 {
            background-color: #046096;
            padding: 10px;
            color: #fff;
            font-size: 18px;
            margin-bottom: 10px;
        }
        .Education{
            margin-top: 40px;
        }
        .Education td{
            padding: 5px;
        }
        .Contact p,
        .Skills ul,
        .Language ul,
        .Hobbies ul,
        .Summary p,
        .Education table {
            font-size: 14px;
            line-height: 1.6;
        }

        .Skills li,
        .Language li,
        .Hobbies li {
            margin-bottom: 5px;
        }

        .Education table {
            width: 100%;
            border-collapse: collapse;
        }
        .pro {
            margin-bottom: 10px;
        }
        .progress-bar {
            width: 135px;
            height: 10px;
            background-color: #ddd;
            border-radius: 15px;
        }

        .progress {
            height: 100%;
            background-color: #046096;
            border-radius: 15px;
        }
        .skillss {
            /*position: absolute;*/
            bottom: 120px;
            right: 20px;
            width: 493.34px;
            height: 200px;
        }
        .navbar {
            width: 112px;
            font-family: 'Trebuchet MS', sans-serif;
            display: flex;
            flex-direction: column;
            align-items: center;
            background: #a1a5eb;
            border-top-left-radius: 10px;
            border-bottom-left-radius: 10px;
            border: 0px solid black;
            box-shadow: 5px 20px 50px #000;
            padding: 10px;
            margin-left: 100px;
            height: 500px;
            justify-content: space-evenly;
        }

        button {
            background-color: #a1a5eb66;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 16px;
            margin-bottom: 10px;
        }

        button:hover {
           background: linear-gradient(to bottom, #0f0c29, #302b63, #24243e); 
        }

    </style>
	</head>

            <body style="background: linear-gradient(to bottom, #0f0c29, #302b63, #24243e); background-attachment: fixed;">
            <div class="navbar"> 
            <P><%= request.getAttribute("username") %></P>
            <form action="Edit.jsp"><button type="submit">Edit</button></form>
            <button onclick="downloadResume()">Download Resume</button>
           
            </div>

		<div class="full">
                    			<div class="left">
				<div class="image">
					<img src="<%= request.getAttribute("photo") %>" alt="mypic">
				</div>
				<div class="name">
					<p><%= request.getAttribute("fname") %> <%= request.getAttribute("lname") %></p>
				</div>
				<div class="Contact">
					<h2>Contact</h2>
					<p><b>Email:</b> <%= request.getAttribute("email") %></p>
					<p><b>Mobile no:</b> <%= request.getAttribute("mo") %></p>
				</div>
				<div class="Skills">
					<h2>Skills</h2>
					<ul>
						<li><p><b>Programms:</b> <%= request.getAttribute("sk1") %>, <%= request.getAttribute("sk2") %>, <%= request.getAttribute("sk3") %></p></li>
					</ul>
				</div>
				<div class="Language">
					<h2>Languages</h2>
					<ul>
						<li><%= request.getAttribute("l1") %></li>
						<li><%= request.getAttribute("l2") %></li>
					</ul>
				</div>
				<div class="Hobbies">
					<h2>Work Experience</h2>
					<ul>
						<li>
							<ul style="list-style: none;"><li><%= request.getAttribute("cn1") %></li>
								<li><%= request.getAttribute("wf1") %>-<%= request.getAttribute("wt1") %></li></ul>
						</li>
						<li>
							<ul style="list-style: none;"><li><%= request.getAttribute("cn2") %></li>
								<li><%= request.getAttribute("wf2") %>-<%= request.getAttribute("wt2") %></li></ul>
						</li>
					</ul>
				</div>
			</div>
			<div class="right">
				<div class="Summary">
					<h2>Summary</h2>
                                        <p style="line-break: anywhere;"><%= request.getAttribute("profile") %></p>
				</div>
				<div class="Education">
					<h2>Education</h2>
                                        <i style="font-size: 100%;"><%= request.getAttribute("cf") %>-<%= request.getAttribute("ct") %></i><br>
                                        <b style="font-size: 18px"><%= request.getAttribute("edu") %></b>
                                        <p style="font-size: 100%; height: 150px ; line-break: anywhere"><%= request.getAttribute("course") %></p>
					<div class="skillss">
						<h2>SKIILS</h2><br>
						
                                                <table style="border:0px">
                                                    <tr>
                                                        <td><%= request.getAttribute("sk1") %></td>
                                                         
                                                        <td>
                                                        <div class="progress-bar">
                                                            <div class="progress" style="width: <%= request.getAttribute("sk1p") %>%"></div>
                                                        </div>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td><%= request.getAttribute("sk2") %></td>
                                                         
                                                        <td><div class="progress-bar">
                                                            <div class="progress" style="width: <%= request.getAttribute("sk2p") %>%"></div>
                                                        </div></td>
                                                    </tr>
                                                    <tr>
                                                        <td><%= request.getAttribute("sk3") %></td>
                                                         
                                                        <td><div class="progress-bar">
                                                            <div class="progress" style="width: <%= request.getAttribute("sk3p") %>%"></div>
                                                        </div></td>
                                                    </tr>
                                                    <tr>
                                                        <td><%= request.getAttribute("sk4") %></td>
                                                         
                                                        <td><div class="progress-bar">
                                                            <div class="progress" style="width: <%= request.getAttribute("sk4p") %>%"></div>
                                                        </div></td>
                                                    </tr>
                                                </table>
					</div>
				</div>
			</div>
		</div>
            <script
            src="https://cdn.jsdelivr.net/npm/html2canvas@1.3.2/dist/html2canvas.min.js"></script>
        <script>
        function downloadResume() {
            var mainDiv = document.querySelector('.full');

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