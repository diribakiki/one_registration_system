<%-- 
    Document   : result1
    Created on : Apr 2, 2024, 7:47:44 AM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <html>
    <head>
       <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="../css/style.css" rel="stylesheet" type="text/css"/>
        <script src="valid.js" type="text/javascript"></script>
        <link rel="stylesheet" href="style.css" type="text/css" />
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" crossorigin="anonymous">
        <style>
            * {box-sizing: border-box;}
            ul {list-style-type: none;}
            body {font-family: Verdana, sans-serif;}

            .month {
                padding: 25px 25px;
                width: 100%;
                background: #1087dd;
                text-align: center;
            }

            .month ul {
                margin: 0;
                padding: 0;
            }

            .month ul li {
                color: white;
                font-size: 15px;
                text-transform: uppercase;
                letter-spacing: 3px;
            }

            .month .prev {
                float: left;
                padding-top: 10px;
            }

            .month .next {
                float: right;
                padding-top: 10px;
            }

            .weekdays {
                margin: 0;
                padding: 10px 0;
                background-color: #ddd;
            }

            .weekdays li {
                display: inline-block;
                width: 13.6%;
                color: #666;
                text-align: center;
            }

            .days {
                padding: 10px 0;
                background: #eee;
                margin: 0;
            }

            .days li {
                list-style-type: none;
                display: inline-block;
                width: 13.6%;
                text-align: center;
                margin-bottom: 5px;
                font-size:12px;
                color: #777;
            }

            .days li .active {
                padding: 5px;
                background: #1087dd;
                color: white !important
            }

            /* Add media queries for smaller screens */
            @media screen and (max-width:720px) {
                .weekdays li, .days li {width: 13.1%;}
            }

            @media screen and (max-width: 420px) {
                .weekdays li, .days li {width: 12.5%;}
                .days li .active {padding: 2px;}
            }

            @media screen and (max-width: 290px) {
                .weekdays li, .days li {width: 12.2%;}
            }
        </style>
    </head>
    <body>
        <div class="container">
            <!--nav bar-->
            <nav class="navbar navbar-expand-lg navbar-light bg-light">
                <a class="navbar-brand" href="http://localhost:8080/Online%20school%20registration%20system/index.html">Navbar</a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav mr-auto">
                        <li class="nav-item active">
                            <a class="nav-link" href="http://localhost:8080/Online%20school%20registration%20system/index.html">Home <span class="sr-only">(current)</span></a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">Link</a>
                        </li>
                    </ul>
                    <spring:url value="/logout" var="url_logout"/>
                    <form class="form-inline">
                        <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
                        <button class="btn btn-outline-success my-2 mr-sm-2" type="submit">Search</button>
                        <a href="${url_logout}" >Logout</a>
                    </form>
                </div>
            </nav>
            <!--jambutan-->
            <div class="jumbotron jumbotron-fluid">
                <div class="container">
                    <h1 class="display-4">Student Grading System</h1>
                    <p class="lead">This is the way students are graded, the information page with this overview.</p>
                </div>
            </div>
            <!--body-->
            <div class="row">
                <div class="col-2 col-md-2">
                    <div class="list-group">
                        <a href="addTeacher.jsp" class="list-group-item list-group-item-action ">Teacher Home</a>
                        <a href="noticeBoard.htm" class="list-group-item list-group-item-action">Notice</a>                                       
                        <a href="student_attendance.jsp" class="list-group-item list-group-item-action">Attendance</a>
                        <a href="result.htm" class="list-group-item list-group-item-action active">Result</a>
                        <a href="studentsInfo.htm" class="list-group-item list-group-item-action">Students Information</a>
                        <br/>
                        <br/><!-- comment -->
                    
                
              
                 
       
       <div> 
<form action="result_data.jsp" method="post">
    
   
    <input type="text" name="Grade_id" placeholder="enter the  Grade id" size="25"/><br><p/> 
    <input type="text" name="Student_id" placeholder="enter the  student id" size="25"/><br><p/> 
<table>
<tr>
<td></td>
<td>
    Select Course <select name="Subject_id">
<option value="select">select</option>
<option value="C#">C#</option>
<option value="Java">java</option>
<option value=".Net">.Net</option>
<option value="DBMS">DBMS</option>
<option value="VB">VB</option>
</select>
    </td>
</tr>
</table><br/>
    <table>
<tr>
<td></td>
<td>
    Select semester <select name="semester_id">
<option value="select">select</option>
<option value="1st semester">1st semester</option>
<option value="2nd semester">2nd semester</option>
<option value="Anuual semester">Anuual semester</option>
</select>
    </td>
</tr>
</table>
    
<table>
<tr>
    <th>Grade id</th>
    <th>Student id</th>
    <th>Semester</th>
<th>Subject</th>
<th>Obtained Marks</th>
<th>Total Marks</th>
</tr>
<tr>
<td align="center">quiz test</td>
<td align="center"><input type="text" size="5" name="c"/></td>
<td align="center">100</td>
</tr>
<tr>
<td align="center">middle exam</td>
<td align="center"><input type="text" size="5" name="java"/></td>
<td align="center">100</td>
</tr>
<tr>
<td align="center">attendance</td>
<td align="center"><input type="text" size="5" name="net"/></td>
<td align="center">100</td>
</tr>
<tr>
<td align="center">project</td>
<td align="center"><input type="text" size="5" name="vb"/></td>
<td align="center">100</td>
</tr>
<tr>
<td align="center">final exam</td>
<td align="center"><input type="text" size="5" name="dbms"/></td>
<td align="center">100</td>
</tr>
<tr>
<td></td>
</tr>
<tr>
<td></td>
</tr>
<tr><td></td><td align="center"><input type="submit" value="submit"/></td></tr>
</table>
</form>
       </div>
       </div>
                    </div>
                </div>
      <div class="col-3 col-md-3">
                    <!--clock-->
                    <div class="row">
                        <div class="col-1"></div>
                        <div class="col-4">
                            <canvas  id="canvas" width="220" height="220"
                                     style="background-color:#1087dd;">
                            </canvas>
                        </div>
                    </div>
                    <br/>
                  
        <script>
            var canvas = document.getElementById("canvas");
            var ctx = canvas.getContext("2d");
            var radius = canvas.height / 2;
            ctx.translate(radius, radius);
            radius = radius * 0.90
            setInterval(drawClock, 1000);

            function drawClock() {
                drawFace(ctx, radius);
                drawNumbers(ctx, radius);
                drawTime(ctx, radius);
            }

            function drawFace(ctx, radius) {
                var grad;
                ctx.beginPath();
                ctx.arc(0, 0, radius, 0, 2 * Math.PI);
                ctx.fillStyle = 'white';
                ctx.fill();
                grad = ctx.createRadialGradient(0, 0, radius * 0.95, 0, 0, radius * 1.05);
                grad.addColorStop(0, '#333');
                grad.addColorStop(0.5, 'white');
                grad.addColorStop(1, '#333');
                ctx.strokeStyle = grad;
                ctx.lineWidth = radius * 0.1;
                ctx.stroke();
                ctx.beginPath();
                ctx.arc(0, 0, radius * 0.1, 0, 2 * Math.PI);
                ctx.fillStyle = '#333';
                ctx.fill();
            }

            function drawNumbers(ctx, radius) {
                var ang;
                var num;
                ctx.font = radius * 0.15 + "px arial";
                ctx.textBaseline = "middle";
                ctx.textAlign = "center";
                for (num = 1; num < 13; num++) {
                    ang = num * Math.PI / 6;
                    ctx.rotate(ang);
                    ctx.translate(0, -radius * 0.85);
                    ctx.rotate(-ang);
                    ctx.fillText(num.toString(), 0, 0);
                    ctx.rotate(ang);
                    ctx.translate(0, radius * 0.85);
                    ctx.rotate(-ang);
                }
            }

            function drawTime(ctx, radius) {
                var now = new Date();
                var hour = now.getHours();
                var minute = now.getMinutes();
                var second = now.getSeconds();
                //hour
                hour = hour % 12;
                hour = (hour * Math.PI / 6) +
                        (minute * Math.PI / (6 * 60)) +
                        (second * Math.PI / (360 * 60));
                drawHand(ctx, hour, radius * 0.5, radius * 0.07);
                //minute
                minute = (minute * Math.PI / 30) + (second * Math.PI / (30 * 60));
                drawHand(ctx, minute, radius * 0.8, radius * 0.07);
                // second
                second = (second * Math.PI / 30);
                drawHand(ctx, second, radius * 0.9, radius * 0.02);
            }

            function drawHand(ctx, pos, length, width) {
                ctx.beginPath();
                ctx.lineWidth = width;
                ctx.lineCap = "round";
                ctx.moveTo(0, 0);
                ctx.rotate(pos);
                ctx.lineTo(0, -length);
                ctx.stroke();
                ctx.rotate(-pos);
            }


            function myFunction() {
                var marks = document.getElementById("m").value;
                var gp= document.f.gPoint.value;
                var g = document.f.gread.value;
                gp = (marks >= 80) ? 5 : (marks >= 70) ? 4 : (marks >= 60) ? 3.5 : (marks >= 50) ? 3 : (marks >= 40) ? 2 : (marks >= 30) ? 1 : 0;
                g = (marks >= 80) ? "A+" : (marks >= 70) ? "A" : (marks >= 60) ? "A-" : (marks >= 50) ? "B" : (marks >= 40) ? "C" : (marks >= 30) ? "D" : "F";
                document.f.gPoint.value =gp
                document.f.gread.value =g

            }
        </script>
        
    </body>
</html>
