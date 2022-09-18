<%-- 
    Document   : MMMUT
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
        <title>MMMUT</title>
        <script src="js/slider.js" type="text/javascript"></script>
         <script src="js/scrollup.js"></script>
        <link rel="stylesheet" href="css/scrollup.css">
    </head>
    <body onload="moveSlider()"background="images/karam1.jpg" style="background-size:cover;background-attachment: fixed;">
     <button onclick="topFunction()" id="myBtn" title="Go to top">Top</button>
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
                            <p style="color: white;font-family: consolas;font-size: 20px;"><%=rs.getString("notificationtext")%></p>
                            <p><%=rs.getString("posteddate")%></p>
                        </span>
                         <% 
                        }
                        %>
                </marquee>
                    </div>
                    
                    
                </div>
                <div id="main">
                    <div id="maina">
                    <h1 style="text-align:center;font-size: 50px;font-family: Impact, sans-serif;color: white;text-shadow: 2px 2px 5px red;">
                            About MMMUT
                    </h1>
                    </div>
                    <div id="mainb">
                        
                        <h1 style="text-align:center;font-size: 30px;font-family: Impact, sans-serif;color: white;text-shadow: 2px 2px 5px red;">
                            Overview
                    </h1>
                    <p style="padding-left: 10px;padding-right: 10px;font-family: consolas;text-align: justify;">
                        &nbsp;&nbsp;&nbsp;Madan Mohan Malaviya University of Technology, Gorakhpur has been established in year 2013 by the Government of Uttar
                        Pradesh in the form of a non-affiliating, teaching and research University after reconstituting the Madan Mohan Malaviya Engineering 
                        College, Gorakhpur which was established in 1962.
                        <br/>
                        &nbsp;&nbsp;&nbsp;Mr.Mrityunajay Upadhayay hails from one of the most premium Engineering Institutes of the country, MMMUT, as a B.Tech in Computer Science and Engineering. 
                        
                    </p>
                        
                    </div>
                    <div id="mainc">
                        <div id="mainca">
                            <img src="images/kamlesh1.jpg" height="280px" width="250px" border="5px"/>
                        </div>
                    </div>
                    <div id="maind">
                        <p style="padding-left: 10px;padding-right: 10px;font-family: consolas;text-align: justify;">
                            <br/>
                            &nbsp;&nbsp;&nbsp; Fifty-Five batches of students have entered its portals to emerge after four ye
                            ars of rigorous education under the tutelage of some of the most venerable teachers, engineers ready t
                            o face the world and create new worlds.
                            <br/>
                            &nbsp;&nbsp;&nbsp;His technical expertise and unique ability to apply his engineering skills has spearheaded the success behind launch of a
                            wide range of highly technical safety products in the Indian as well as the overseas market.
                            An exhaustive range of Personal Protective Equipment, Confined space entry, egress products, Rope Access & Rescue products.”
                            <br/>
                            &nbsp;&nbsp;&nbsp;Fifty-Five batches of students have entered its portals to emerge after four ye
                            ars of rigorous education..<br/>
                            &nbsp;&nbsp;&nbsp&nbsp;&nbsp;&nbsp&nbsp;&nbsp;&nbsp&nbsp;&nbsp;&nbsp&nbsp;&nbsp;&nbsp&nbsp;&nbsp;&nbsp&nbsp;&nbsp;&nbsp&nbsp;&nbsp;&nbsp&nbsp;&nbsp;&nbsp&nbsp;
                            &nbsp;&nbsp&nbsp;&nbsp;&nbsp&nbsp;&nbsp;&nbsp&nbsp;&nbsp;&nbsp&nbsp;&nbsp;&nbsp&nbsp;&nbsp;&nbsp&nbsp;&nbsp;&nbsp&nbsp;&nbsp;&nbsp&nbsp;&nbsp;&nbsp&nbsp;&nbsp;&nbsp
                            <b>By-Mrityunjay </b>
                        </p>
                         
                    </div>
                    
                </div>                
            </div>
             
             
             <div id="maingallary">  
    <div id="gallheading">
            OUR TEAM
    </div>
    <div id="gallphotos">
        
        
         
<div class="container">
    <img src="images/Chancellor.png" alt="" height="405px" width="310px">
   <span class="title">Smt.Aanndiben Patel</span>
   <span class="text">Hon'ble chancellor of MMMUT <br/>She is Honb'le Governor of Uttar Pradesh.</span>
</div>
<div class="container">
  <img src="images/cm.png" alt="" height="195px" width="310px">
  <span class="title">Yogi Aadityanath</span>
  <span class="text"> <br/>Hon'ble Chief Minister of Uttar Pradesh  </span>
</div>
<div class="container">
  <img src="images/yashi.png" alt="" height="195px" width="310px">
   <span class="title">Dr.J P Pandey</span>
  <span class="text">Vice-Chancellor of MMMUT</span>
</div>
<div class="container">
  <img src="images/brijesh1.jpg" alt="" height="195px" width="310px">
   <span class="title">Dr.A K Sharma</span>
  <span class="text">Professor at CSE Department</span>
</div>
<div class="container">
  <img src="images/rohit1.jpg" alt="" height="195px" width="310px">
   <span class="title">HC Chandra</span>
  <span class="text">Lecturer of math department</span>
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
	
		<li>Faq</li>
	
                <li>Contact Me<br/>Mo.No.-7866548543</li>
                </ul>
                 </div>
		</div>
 
		<div id="footer-center">
                    <div id="footerca">
                        <h3 align="center" >Quick Links</h3><hr/>
                        <ul style="margin-top: 15; font-family: consolas;" type="square">
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
                        <li>Kudaghat,Deoria road</li>
                    <li>Distt.& Tashil-Gorakhpur</li>
                    <li>Pin-code: 233227</li>
                    <li>STATE-<br/>
                        Northern-Uttarpradesh</li>
                    <li style="text-align: center;"><a style="font-size: 25px;color:yellow;" href="https://www.google.com/maps/place/Madan+Mohan+Malaviya+University+Of+Technology/@26.7314343,83.4309389,17z/data=!3m1!4b1!4m5!3m4!1s0x39915ca3e2aa136b:0xc039bdf0211338a9!8m2!3d26.7314295!4d83.4331276" target="blank">View on Map</a></li>
                    </ul>
                    
                    </div>
		</div>
                
                <div id="copyright">
                 
                 &copy; MMMUT
             </div>
            </div>
 
		</div>          
       
    </body>
</html>

