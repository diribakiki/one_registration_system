<%-- 
    Document   : users
    Created on : Apr 11, 2024, 2:16:35 PM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="content-type" content="text/html; charset=utf-8" />
        <title>users page </title>
        <meta name="keywords" content="" />
        <meta name="description" content="" />
        <script src="valid.js" type="text/javascript"></script>
        <link rel="stylesheet" href="style.css" type="text/css" />
       
    <body bgcolor="#735b3d" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
         <div class="col-3 col-md-3">
                    <!--clock-->
                    <div class="row">
                        <div class="col-1"></div>
                        <div class="col-4">
                            <left> <canvas  id="canvas" width="280" height="100"
                                     style="background-color:pink;">
                                </canvas></left>
                            
                                   <div class="menu">
		<ul>
                    <h3> <a href="http://localhost:8080/test2/index.html">Homepage</a>&nbsp;&nbsp;&nbsp;&nbsp;
                        <a href="http://localhost:8080/Online%20school%20registration%20system/login/login.jsp">Log in page</a>&nbsp;&nbsp;&nbsp;&nbsp;
                         <a href="http://localhost:8080/Online_Registration_Portal/Form1/Course.jsp"> Course</a>&nbsp;&nbsp;&nbsp;&nbsp;
                         <a href="http://localhost:8080/Online%20school%20registration%20system/form/result_data.jsp">Student result</a><h3>
                            
		</ul>
                                       
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

           </script>
        <center>
            <br> <br> 
            <table id="container" width="900" border="0" cellpadding="0" cellspacing="0">
                <tr>
                    <td width="900" height="135" colspan=3>
                        <table id="up" width="900" height="135" border="1" cellpadding="0" cellspacing="0" bordercolor=silver>
                            <tr>
                                <td width="206" height="85">
                                    <img src="images/i2.jpeg" width="206" height="85" alt=""></td>
                                <td width="270" height="85">
                                    <img src="images/schoo12.jpeg" width="275" height="85" alt=""></td>
                                <td width="419" height="85" colspan="2">
                                    <img src="images/school3.jpeg" width="425" height="85" alt=""></td>
                            </tr>
                            <tr bordercolor=white>
                                <td width="900" height="10" colspan="4" bgcolor="#A8C1E5">
                                    <img src="images/spacer.gif" width="900" height="10" alt=""></td>
                            </tr>
                            <tr bordercolor=white>
                                <td width="206" height="24">
                                    <img src="images/i2.jpeg" width="206" height="24" alt=""></td>
                                <td width="275" height="24">
                                    <img src="images/school2.jpeg" width="275" height="24" alt=""></td>
                                <td width="209" height="24">
                                    <img src="images/school1.jpeg" width="209" height="24" alt=""></td>
                                <td width="210" height="24">
                                    <img src="images/school3.jpeg" width="210" height="24" alt=""></td>
                            </tr>
                            <tr bordercolor =white>
                                <td width="900" height="16" colspan="4">
                                    <img src="images/spacer.gif" width="900" height="16" alt=""> 
                            <marquee behavior =alternate direction=right> <font size=3 color=blue> <b> <font size=5>W</font>elcome to the <font size=5>O</font>line<font size=5>R</font>egistration <font size=5>P</font>ortal </font></td>
                                    </tr>
                                    </table></td>
                                    </tr>
                                    <tr>
                                        <td id="left" width="180" height="522" valign="top">
                                            <table width="180" height="522" border="0" cellpadding="0" cellspacing="0">
                                                <tr>
                                                    <td width="180" height="22" valign="top">
                                                        <img src="images/title1.jpg" width="180" height="22" alt=""></td>
                                                </tr>
                                                <tr>
                                                    <td  id="menu" width="180" height="500" align="vertical" valign="top">
                                                        <br> <br> <br>
                                            </table></td>
                                        <td id="contents" width="540" height="522" align="left" valign="top"><br>



                                            <h1> users add form </h1><br/><p></p><br/>

                                            <form action="users_data.jsp" method="POST"class="form" onsubmit="return validAddSubject();">

                                                <input type="text" name="user_id" placeholder="enter the  user id" size="50"/><br><p> </p>
                                                <input type="text" name="user_name" placeholder="enter the user name" size="50"/><br><p> </p>
                                                <input type="text" name="password" placeholder="enter the password" size="50"/><br><p> </p>
                                                <input type="text" name="role_id" placeholder="enter the role id" size="50"/><br><p> </p>
                                                <input type="text" name="email" placeholder="enter the email" size="50"/><br><p> </p>
                                                <input type="text" name="phone" placeholder="enter the phone" size="50"/><br><p> </p>
                                                
                                                  <input type="submit" value="Register" />
                                                    <input type="reset" value="Reset" />
                                            </form>

                                            </center>
     
    </body>
</html>
