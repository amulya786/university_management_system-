<%-- 
    Document   : ums
    Created on : 3 Aug, 2021, 3:44:35 PM
    Author     : Mrityunjay Upadhyay
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="mypack.DbManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="css/style.css" rel="stylesheet">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>mmmut</title>
        <script src="js/slider.js" type="text/javascript"></script>
        <meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta name="viewport" content="width=device-width, initial-scale=1.0"> 
	<link rel="stylesheet" href="css/normalize.css">
	<link rel="stylesheet" href="css/main.css">
	<script src="js/kam/modernizr-2.6.2.min.js"></script>
        <script src="js/scrollup.js"></script>
        <link rel="stylesheet" href="css/scrollup.css">
          
    </head>
    <body class="demo" onload="moveSlider()" background="images/karam1.jpg" style="background-size:cover;background-attachment: fixed;">
   <button onclick="topFunction()" id="myBtn" title="Go to top">Top</button>
           
	 
  <div id="loader-wrapper">
			<div id="loader"></div>

			<div class="loader-section section-left"></div>
            <div class="loader-section section-right"></div>

		</div>

		<div id="content"> 
        
        
        <div id="outer">
            <div id="header">
                <div id="logo">
                    <img src="images/logo1.jpg"> 
                   
                </div>
                <div id="banner">
                   <span id="kamlesh">   MMMUT   </span>
                </div>
            </div>
             <div id="menu"> 
                 <ul>
                     <li><a href="index.jsp">Home</a></li>
                     <li><a href="aboutus.jsp">About Us</a></li>
                     <li><a href="registration.jsp">Registration</a></li>
                     <li><a href="login.jsp">Login</a></li>
                     <li><a href="contactus.jsp">Contact Us</a></li>
                 </ul> 
             </div>
             <div id="slider">
                 <img id="slide" width="1000px" height="250px"/>
             </div>
            <div id="parent">
                <div id="left">
                    <div id="notification">
                        <center> <img src="images/bell.png" height="100px" width="100px"/></center>
                    </div>
                    <div id="news">  
                    <marquee direction="up" height="500px" onmouseover="stop()" onmouseout="start()" scrollamount="5">
                    
                    <%
                        DbManager dm=new DbManager();
                        ResultSet rs=dm.selectQuery("select * from notification");
                        while(rs.next())
                        {
                           
                        %>
                        
                        <span style="text-align: center;">
                            <p style="color:white;font-family: consolas;font-size: 20px;"><%=rs.getString("notificationtext")%></p>
                            <p><%=rs.getString("posteddate")%></p>
                        </span>
                         <% 
                        }
                        %>
                </marquee>
                    </div>
                    
                </div>
                <div id="main">
                    
                    <h1 align="center" style="font-family: Impact, sans-serif;color: white;font-stretch: normal;text-shadow: 2px 2px 5px red;"><font color="white">Introduction</font></h1>    
                    <p style="padding-left: 10px;padding-right: 10px;font-family: consolas;text-align: justify;">
                        Madan Mohan Malaviya University of Technology, Gorakhpur has been established in year 2013 by
                        the Government of Uttar Pradesh in the form of a non-affiliating, teaching and research 
                        University after reconstituting the Madan Mohan Malaviya Engineering College, Gorakhpur which
                        was established in 1962.</p>
                    <h1 align="left" style="font-family: Impact, sans-serif;color: white;font-stretch: normal;text-shadow: 2px 2px 5px red;"><font color="white">University Overview</font></h1>
                    <p style="padding-left: 10px;padding-right: 10px;font-family: consolas;text-align: justify;">
                    Fifty-Four batches of students have entered its portals to emerge after four years of rigorous
                    education under the tutelage of some of the most venerable teachers, engineers ready to face the world
                    and create new worlds. The University is located in the Gorakhpur -Deoria road about 9 Km away from 
                    GorakhpurRailway Station. In addition to UG in CivilEngineering, Chemical Engineering, Computer Science 
                    & Engineering, Mechanical Engineering,Electrical Engineering and Electronics & Communication Engineering,
                    Information Technology, University also offers MCA, BBA, MBA, M. Tech, M.Sc. and Ph.D. courses invarious 
                    specializations.</p>
                    <h1 align="left" style="font-family: Impact, sans-serif;color: white;font-stretch: normal;text-shadow: 2px 2px 5px red;"><font color="white">MISSION</font></h1>
<p style="padding-left: 10px;padding-right: 10px;font-family: consolas;text-align: justify;">
    The distinctive mission of the University is:
To serve society as a center of higher learning, providing long-term societal benefits through transmitting
advanced knowledge, discovering new knowledge and functioning as an active working repository of organized knowledge.
To take leadership role by providing need-based programs in engineering and technology, applied sciences, 
management, humanities, architecture, pharmacy, retail and fashion design, mass-communication, agriculture and
other employable courses in emerging areas.  
</p>    
                    
                    
                </div>                
            </div>
           
             
<div id="maingallary">  
    <div id="gallheading">
            GALLERY
    </div>
    <div id="gallphotos">
        
        
         
<div class="container">
    <img src="images/Chancellor.png" alt="" height="405px" width="310px">
   <span class="title">Smt.Aanndiben Patel</span>
   <span class="text">Hon'ble Chancellor of MMMUT<br/>She is Honb'le Governor of Uttar Pradesh</span>
</div>
<div class="container">
  <img src="images/cm.png" alt="" height="195px" width="310px">
  <span class="title">Yogi Aadityanath</span>
  <span class="text">Hon'ble Chief Minister of Uttar Pradesh <br/>is now one of the best reputed companies. </span>
</div>
<div class="container">
  <img src="images/yashi.png" alt="" height="195px" width="310px">
   <span class="title">Dr.J P Pandey</span>
  <span class="text">Vice-Chancellor of MMMUT.</span>
</div>
<div class="container">
  <img src="images/brijesh1.jpg" alt="" height="195px" width="310px">
   <span class="title">Dr.A K Sharma</span>
  <span class="text">Professor at CSE Department.</span>
</div>
<div class="container">
  <img src="images/rohit1.jpg" alt="" height="195px" width="310px">
   <span class="title">HC Chandra</span>
  <span class="text">Lecturer of math department.</span>
</div>
 </div>  
 
</div>
         <div id="footer">
 
		<div id="footer-left">
                 <div id="footerla">
		<h3 align="center">The University</h3><hr/>
                <ul align="left" style="font-family: consolas;"> 
                <li>Thoughts & Leadership</li>
	
		<li>Training Program</li>
	
		<li>Activities</li>
	
		<li>About</li>
	
		<li>FAQ</li>
	
                <li>Contact Me<br/>Mo.No.-8112740805</li>
                </ul>
                 </div>
		</div>
 
		<div id="footer-center">
                    <div id="footerca">
                        <h3 align="center" >Quick Links</h3><hr/>
                        <ul style="margin-top:15px; font-family: consolas;" type="square">
                            <li style="margin-top:8px;"><a href="index.jsp" style="color: white;">Home</a></li>
                            <li style="margin-top:8px;"><a href="aboutus.jsp"  style="color: white;">About Us</a></li>
                            <li style="margin-top:8px;"><a href="login.jsp"  style="color: white;">Quick Login</a></li>
                            <li style="margin-top:8px;"><a href="registration.jsp"  style="color: white;">Registration</a></li>
                            <li style="margin-top:8px;"><a href="contactus.jsp"  style="color: white;">Give Feedback</a></li>
                            
                        </ul>
                    </div>
                </div>
		<div id="footer-right">
                    <div id="footerra"> 
		 
                <h3 align="center" > Address/Location</h3>
                    <hr/>
                    <ul type="none" style="margin-top: 15px; font-family: consolas;"> 
                        <li>Vill& Post-Saheri</li>
                    <li>Distt.& Tashil-Ghazipur</li>
                    <li>Pin-code: 233302</li>
                    <li>STATE-<br/>
                        Northern-Uttarpradesh</li>
                    <li style="text-align: center;"><a style="font-size: 25px;color:yellow;" href="https://www.google.com/maps/place/Madan+Mohan+Malaviya+University+Of+Technology/@26.7314343,83.4309389,17z/data=!3m1!4b1!4m5!3m4!1s0x39915ca3e2aa136b:0xc039bdf0211338a9!8m2!3d26.7314295!4d83.4331276" target="blank">View on Map</a></li>
                    </ul>
                    
                    </div>
		</div>
             <div id="copyright">
                 
                 &copy; Copyright to mmmut::Developed & Managed by Mrityunjay...
                 
             </div>
		</div>            
        </div>
                </div>
         <script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
	 <script>window.jQuery || document.write('<script src="js/kam/jquery-1.9.1.min.js"></script> 
  
	 <script src="js/main.js"></script>
     </body>
</html>
