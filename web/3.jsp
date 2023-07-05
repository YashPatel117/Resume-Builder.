<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="data.jsp" />
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <link rel="stylesheet"
            href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css"
            integrity="sha512-5A8nwdMOWrSz20fDsjczgUidUBR8liPYU+WymTZP1lmY9G6Oc7HlZv156XqnsgNUzTyMefFTcsFH/tnJE/+xBg=="
            crossorigin="anonymous" referrerpolicy="no-referrer" />
        <style>
            @import url('https://fonts.googleapis.com/css2?family=Roboto+Slab:wght@200;300;400;500;600&display=swap');

html {
    font-size: 62.5%;
}
.navbar {
            width: 130px;
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
.progress-bar {
            width: 300px;
            height: 10px;
            background-color: #ddd;
            border-radius: 15px;
        }

        .progress {
            height: 100%;
            background-color: #046096;
            border-radius: 15px;
        }

* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: 'Roboto Slab', serif;
}

body {
    background-color: lightblue;
    display: flex;
    justify-content: center;
    align-items: center;
    min-height: 100vh;
    margin-top: 10px;
}

.container {
    width: 100%;
    background: #fff;
    display: grid;
    /*margin: 5rem;*/
    max-width: 100rem;
    grid-template-columns: 1fr 2fr;
    box-shadow: 0 3.5rem 5.5rem rgba(0, 0, 0, 0.1);
}

.container .left_side {
    position: relative;
    padding: 4rem;
    background: #003147;
}

.profile {
    position: relative;
    display: flex;
    flex-direction: column;
    align-items: center;
    padding-bottom: 2rem;
    border-bottom: 1px solid rgba(255, 255, 255, 0.2);
}

.profile .imgBox {
    position: relative;
    width: 20rem;
    height: 20rem;
    border-radius: 10rem;
    overflow: hidden;
}

.profile .imgBox img {
    position: absolute;
    top: 0;
    left: 0;
    width: 20rem;
    height: 20rem;
    object-fit: cover;
}

.profile h2 {
    color: white;
    text-align: center;
    text-transform: uppercase;
    margin-top: 1rem;
    font-size: 2rem;

}

.profile h2 span {
    font-size: 1.5rem;
    font-weight: 300;
}

.contact {
    padding-top: 3rem;
}

.title {
    color: #fff;
    font-weight: 600;
    letter-spacing: 0.1rem;
    margin-bottom: 2rem;
    font-size: 1.8rem;
}

.contact ul {
    position: relative;

}

.contact ul li {
    position: relative;
    list-style: none;
    margin: 1rem 0;
    color: #fff;
    font-size:1.2rem ;
    letter-spacing: 0.1rem;
    cursor: pointer;
}

.contact ul li .icon {
    display: inline-block;
    width: 1.5rem;
    font-size: 1.2rem;
    color: #03a9f4
}

.contact.education li{
    margin-bottom: 3rem;
}

.contact.education h5{
    color: #03a9f4;
    font-weight: 500;
}

.contact.education h4:nth-child(2){
  color: #fff;
  font-weight: 500;
}

.contact.education h4{
    color: #fff;
    font-weight: 300;
}

.contact.language .percent {
    position: relative;
    height: 0.6rem;
    width: 20rem;
    background: #081921;
    display: block;
    margin-top: 0.5rem;

}

.contact.language .percent div{
    position: absolute;
    top: 0;
    left: 0;
    height: 100%;
    background: #03a9f4;


}

.container .right_side {
    position: relative;
    padding: 4rem;
    background: #fff;
}

.about {
    margin-bottom: 5rem;
}

.about:last-child{
    margin-bottom: 0;
}

.title2{
    color: #003147;
    text-transform: uppercase;
    letter-spacing: 0.1rem;
    margin-bottom: 1rem;
}
p{
    color: #333;
    font-size: 1.3rem;
}

.about .box{
    display: flex;
    flex-direction: row;
    margin: 2rem 0;
}

.about .box .year_company{
   min-width: 10rem; 
}

.about .box .year_company h5{
    text-transform: uppercase;
    color: #848c90;
    font-weight: 600;
    font-size: 1rem;
}

.about .box .text h4{
    text-transform: uppercase;
    color: #2a7da2;
    font-size: 1.2rem;
}

.skills .box{
    position: relative;
    width: 100%;
    display: grid;
    grid-template-columns: 10rem 1fr;
    justify-content: center;
}

.skills .box h4{
    text-transform: uppercase;
    color: #848c99;
    font-weight: 500;
}

.skills .box  .percent{
    position: relative;
    width: 100%;
    height: 1rem;
    background: #f0f0f0;
}

.skills .box  .percent div{
    position: absolute;
    top: 0;
    left: 0;
    height: 100%;
    background: #03a9f4;

}

.interest ul{
    display: grid;
    grid-template-columns: repeat(4,1fr);
}

.interest ul li{
    list-style: none;
    color: #333;
    font-size: 1.3rem;
    font-weight: 500;
    margin: 0.5rem 0;
}

.interest ul li .fa{
     color: #03a9f4;
     font-size: 1.8rem;
     width: 3rem;
}
 
        </style>
        <title>Resume</title>
    </head>

        <body style="background: linear-gradient(to bottom, #0f0c29, #302b63, #24243e); background-attachment: fixed;">
        <div class="navbar"> 
            <P><%= request.getAttribute("username") %></P>
            <form action="Edit.jsp"><button type="submit">Edit</button></form>
            <button onclick="downloadResume()">Download Resume</button>
           
            </div>
        <div class="container">
            <div class="left_side">
                <div class="profile">
                    <div class="imgBox">
                        <img src="<%= request.getAttribute("photo") %>" alt="image" />
                    </div>
                    <h2>
                        <%= request.getAttribute("fname") %> <%= request.getAttribute("lname") %> <br />
                        <span> <%= request.getAttribute("job") %></span>
                    </h2>
                </div>

                <div class="contact">
                    <h3 class="title">Contact Info</h3>
                    <ul>
                        <li>
                            <span class="icon"><i class="fa fa-phone-square"
                                    aria-hidden="true"></i></span>
                            <span class="text"><%= request.getAttribute("mo") %></span>
                        </li>

                        <li>
                            <span class="icon"><i class="fa fa-envelope-o"
                                    aria-hidden="true"></i></span>
                            <span class="text"><%= request.getAttribute("email") %></span>
                        </li>

                        <li>
                            <span class="icon"><i class="fa fa-map-marker"
                                    aria-hidden="true"></i></span>
                            <span class="text"><%= request.getAttribute("address") %></span>
                        </li>
                    </ul>
                </div>

                <div class="education contact">
                    <h3 class="title">Education</h3>
                    <ul>
                        <li>
                            <h5><%= request.getAttribute("cf") %> - <%= request.getAttribute("ct") %></h5>
                            <h4><%= request.getAttribute("edu") %></h4>
                            <h4><%= request.getAttribute("course") %></h4>
                        </li>


                    </ul>
                </div>

                <div class="contact language">
                    <h3 class="title">Languages</h3>
                    <ul>
                        <li>
                            <span class="text"><%= request.getAttribute("l1") %></span>
                        </li>

                        <li>
                            <span class="text"><%= request.getAttribute("l2") %></span>
                        </li>


                    </ul>
                </div>
            </div>

            <div class="right_side">
                <div class="about">
                    <h2 class="title2">Profile</h2>
                    <p style="height: 135px; line-break: anywhere ;">
                        <%= request.getAttribute("profile") %>
                    </p>
                </div>

                <div class="about">
                    <h2 class="title2">Experience</h2>
                    <div class="box">
                        <div class="year_company">
                            <h5><%= request.getAttribute("wf1") %> - <%= request.getAttribute("wt1") %></h5>
                            <h5><%= request.getAttribute("cn1") %></h5>
                        </div>
                        <div class="text">
                            <h4>My Roll</h4>
                            <p style="height: 65px;">
                                <%= request.getAttribute("we1") %>
                            </p>
                        </div>
                    </div>

                    <div class="box">
                        <div class="year_company">
                            <h5><%= request.getAttribute("wf2") %> - <%= request.getAttribute("wt2") %></h5>
                            <h5><%= request.getAttribute("cn2") %></h5>
                        </div>
                        <div class="text">
                            <h4>My Roll</h4>
                            <p style="height: 65px;">
                                <%= request.getAttribute("we2") %>
                            </p>
                        </div>
                    </div>

                </div>

                <div class="about skills">
                    <h2 class="title2">Professional Skills</h2>
                    <div class="box">
                        <h4><%= request.getAttribute("sk1") %></h4>
                        <div class="progress-bar">
                            <div class="progress" style="width: <%= request.getAttribute("sk2p") %>%"></div>
                        </div>
                    </div>

                    <div class="box">
                        <h4><%= request.getAttribute("sk2") %></h4>
                        <div class="progress-bar">
                            <div class="progress" style="width: <%= request.getAttribute("sk1p") %>%"></div>
                        </div>
                    </div>

                    <div class="box">
                        <h4><%= request.getAttribute("sk3") %></h4>
                        <div class="progress-bar">
                            <div class="progress" style="width: <%= request.getAttribute("sk2p") %>%"></div>
                        </div>
                    </div>

                    <div class="box">
                        <h4><%= request.getAttribute("sk4") %></h4>
                        <div class="progress-bar">
                            <div class="progress" style="width: <%= request.getAttribute("sk2p") %>%"></div>
                        </div>
                    </div>

                </div>

            </div>
        </div>
    </body>
<script
            src="https://cdn.jsdelivr.net/npm/html2canvas@1.3.2/dist/html2canvas.min.js"></script>
        <script>
        function downloadResume() {
            var mainDiv = document.querySelector('.container');

            html2canvas(mainDiv).then(function(canvas) {
                var link = document.createElement('a');
                link.href = canvas.toDataURL('image/png');
                link.download = 'resume.png';
                link.click();
            });
        }
    </script>
</html>