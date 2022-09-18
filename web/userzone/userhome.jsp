<%-- 
    Document   : userhome
    Created on : 6 Aug, 2021, 5:11:02 PM
    Author     : Mrityunajy Upadhyay
--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="mypack.DbManager"%>
<%
    if(session.getAttribute("userid")==null || session.getAttribute("userid")=="")
    {
        response.sendRedirect("../login.jsp");
    }
    else
    {
        
     
    
    
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="css/style.css" rel="stylesheet">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>MMMUT</title>
    </head>
    <body background="images/karam1.jpg" style="background-size:cover;background-attachment: fixed;">
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
                     <li><a href="userhome.jsp">Home</a></li>
                     <li><a href="tender.jsp">Live Notice</a></li>
                     <li><a href="discussion.jsp">Discussion</a></li>
                     <li><a href="complain.jsp">Complain</a></li>
                     <li><a href="changepassword.jsp">Change Pwd.</a></li>
                      <li><a href="logout.jsp">Logout</a></li>
                 </ul>
             </div> 
            <div id="parent" style="padding-bottom: 50px;">
                
                
                
                 <ul class="cd-hero-slider">

                <li class="selected">
                    <div class="heading">
                        <%                            String userid = session.getAttribute("userid").toString();
                            DbManager ssm = new DbManager();
                            String query = "select student_name from register where emailaddress ='" + userid + "'";
                            ResultSet sss = ssm.selectQuery(query);
                            sss.next();
                        %>
                        <h1 align="center"><% out.println("Welcome " + sss.getString("student_name"));%></h1>
                        <center><span>Welcome to Madan Mohan Malviya Tecnical University</span></center>
                    </div>
                    <div class="cd-full-width first-slide">


                        <div class="cd-half-width fivth-slide">
                            <div class="container">
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="content fivth-content" id="print">

                                            <div class="col-md-12" style="text-align: center;">

                                                <center><h2>It's all about U</h2></center>

                                            </div>

                                            <div class="row">
                                                <div class="col-md-9">
                                                    <table class="table table-striped table-responsive-md">
                                                        <%
                                                            String stu = session.getAttribute("userid").toString();
                                                            DbManager sssm = new DbManager();
                                                            String query1 = "select * from register where emailaddress ='" + stu + "'";
                                                            ResultSet ssss = sssm.selectQuery(query1);
                                                            ssss.next();
                                                        %>
                                                        <tbody>
                                                            <tr>
                                                                <th scope="row" style="background-color:#F75D59;font-family: Impact, sans-serif;outline:none;border:none;box-shadow:5px 2px 5px 5px black;height:40px;width:auto;font-size:20px;color: white;">Name</th>
                                                                <td style="background-color:lightgoldenrodyellow;font-family:cursive;outline:none;border:none;box-shadow:5px 2px 5px 5px black;height:30px;width:50%;font-size:15px;"><%=ssss.getString("student_name")%> </td>
                                                                <th scope="row"style="background-color:#F75D59;font-family: Impact, sans-serif;outline:none;border:none;box-shadow:5px 2px 5px 5px black;height:40px;width:auto;font-size:20px;color: white;">Gender</th>
                                                                <td style="background-color:lightgoldenrodyellow;font-family:cursive;outline:none;border:none;box-shadow:5px 2px 5px 5px black;height:30px;width:50%;font-size:15px;"><%=ssss.getString("gender")%></td> 
                                                            </tr>
                                                            <tr>
                                                                <th scope="row"style="background-color:#F75D59;font-family: Impact, sans-serif;outline:none;border:none;box-shadow:5px 2px 5px 5px black;height:40px;width:auto;font-size:20px;color: white;">Father Name</th>
                                                                <td style="background-color:lightgoldenrodyellow;font-family:cursive;outline:none;border:none;box-shadow:5px 2px 5px 5px black;height:30px;width:50%;font-size:15px;"><%=ssss.getString("father_name")%></td>
                                                                <th scope="row"style="background-color:#F75D59;font-family: Impact, sans-serif;outline:none;border:none;box-shadow:5px 2px 5px 5px black;height:40px;width:auto;font-size:20px;color: white;">Branch</th>
                                                                <td style="background-color:lightgoldenrodyellow;font-family:cursive;outline:none;border:none;box-shadow:5px 2px 5px 5px black;height:30px;width:50%;font-size:15px;"><%=ssss.getString("branch")%></td>
                                                            </tr>
                                                            <tr>
                                                                <th scope="row" style="background-color:#F75D59;font-family: Impact, sans-serif;outline:none;border:none;box-shadow:5px 2px 5px 5px black;height:40px;width:auto;font-size:20px;color: white;">Enrollment Id</th>
                                                                <td style="background-color:lightgoldenrodyellow;font-family:cursive;outline:none;border:none;box-shadow:5px 2px 5px 5px black;height:30px;width:50%;font-size:15px;"><%=ssss.getString("enrollmentid")%></td>
                                                                <th scope="row" style="background-color:#F75D59;font-family: Impact, sans-serif;outline:none;border:none;box-shadow:5px 2px 5px 5px black;height:40px;width:auto;font-size:20px;color: white;">Email Address</th>
                                                                <td style="background-color:lightgoldenrodyellow;font-family:cursive;outline:none;border:none;box-shadow:5px 2px 5px 5px black;height:30px;width:50%;font-size:15px;"><%=ssss.getString("emailaddress")%></td>
                                                            </tr>
                                                            <tr>
                                                                <th scope="row" style="background-color:#F75D59;font-family: Impact, sans-serif;outline:none;border:none;box-shadow:5px 2px 5px 5px black;height:40px;width:auto;font-size:20px;color: white;">Contact Number</th>
                                                                <td style="background-color:lightgoldenrodyellow;font-family:cursive;outline:none;border:none;box-shadow:5px 2px 5px 5px black;height:30px;width:50%;font-size:15px;"><%=ssss.getString("contactno")%></td>
                                                                <th scope="row" style="background-color:#F75D59;font-family: Impact, sans-serif;outline:none;border:none;box-shadow:5px 2px 5px 5px black;height:40px;width:auto;font-size:20px;color: white;">Address</th>
                                                                <td style="background-color:lightgoldenrodyellow;font-family:cursive;outline:none;border:none;box-shadow:5px 2px 5px 5px black;height:30px;width:50%;font-size:15px;"><%=ssss.getString("address")%></td>
                                                            </tr> 
                                                        </tbody>
                                                    </table> 
                                                </div>
                                            
                                            </div>
                                            <div class="row">
                                                <div class="col-md-12" style='text-align:center;'>
                                                    <div class="primary-button" >
                                                        <br><br>
                                                        <a href="#" onClick="printdocs()" style="background-color:blue;font-family:Impact;outline:none;border:none;box-shadow:5px 2px 5px 5px black;height:50px;width:50%;font-size:15px;color:white;padding: 10px;">Print Profile</a>
                                                    </div>

                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>                  
                            </div>
                        </div>    
                    </div>
                </li>

                <script type="text/javascript">

                    function printdocs() {
                        var divContents = document.getElementById("print").innerHTML;
                        var a = window.open('', '', 'height=800, width=600');
                        a.document.write('<html>');
                        a.document.write('<body > <img> <h1> <br>');
                        a.document.write(divContents);
                        a.document.write('</body></html>');
                        a.document.close();
                        a.print();
                        document.body.innerHTML = oldPage;
                    }

                    function printrep() {
                        var divContents = document.getElementById("printreport").innerHTML;
                        var a = window.open('', '', 'height=800, width=600');
                        a.document.write('<html>');
                        a.document.write('<body > <img> <h1> <br>');
                        a.document.write(divContents);
                        a.document.write('</body></html>');
                        a.document.close();
                        a.print();
                        document.body.innerHTML = oldPage;
                    }

                </script>







                
                 
                  
                  
            </div>
            <div id="footer">
                <div id="lfooter">
                    Copyright &copy; to mmmut
                </div>
                <div id="rfooter">
                    Developed by:Mrityunjay
                </div>                
            </div>            
        </div>
    </body>
</html>

<%
    }
    
%>
