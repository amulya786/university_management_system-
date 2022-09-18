<%-- 
    Document   : Students
    Created on : 9 Aug, 2021, 6:01:34 PM
    Author     : Mrityunjay Upadhyay
    Project    : MMMUT
--%>
<a href="adminhome.jsp"></a>
<%@page import="java.sql.ResultSet"%>
<%@page import="mypack.DbManager"%>
<%
    if(session.getAttribute("adminid")==null || session.getAttribute("adminid")=="")
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
                     <li><a href="adminhome.jsp">Home</a></li>
                     <li><a href="enquiries.jsp">Enquiries</a></li>
                     <li><a href="complains.jsp">Complains</a></li>
                     <li><a href="vendors.jsp">Students</a></li>
                     <li><a href="uploadtenders.jsp">Upload Notice</a></li>
                      <li><a href="logout.jsp">Logout</a></li>
                 </ul>
             </div> 
            <div id="parent"><br/>
                 <h1 style="text-align:center;margin-top: 10px;font-size: 50px;font-family: Impact, sans-serif;color: white;text-shadow: 2px 2px 5px red;">
                            View All Students
                </h1>
                <table  style="margin: 0 auto; max-width: 50%;">
                    <tr>
                        <th style="background-color:#F75D59;font-family: Impact, sans-serif;outline:none;border:none;box-shadow:5px 2px 5px 5px black;height:30px;width:auto;font-size:15px;color: white;">Student Name</th> 
                        <th style="background-color:#F75D59;font-family: Impact, sans-serif;outline:none;border:none;box-shadow:5px 2px 5px 5px black;height:30px;width:auto;font-size:15px;color: white;">Father Name</th>
                        <th style="background-color:#F75D59;font-family: Impact, sans-serif;outline:none;border:none;box-shadow:5px 2px 5px 5px black;height:30px;width:auto;font-size:15px;color: white;">Branch</th>
                        <th style="background-color:#F75D59;font-family: Impact, sans-serif;outline:none;border:none;box-shadow:5px 2px 5px 5px black;height:30px;width:auto;font-size:15px;color: white;"> Gender</th>
                        <th style="background-color:#F75D59;font-family: Impact, sans-serif;outline:none;border:none;box-shadow:5px 2px 5px 5px black;height:30px;width:auto;font-size:15px;color: white;">Enrollmentid</th>
                        <th style="background-color:#F75D59;font-family: Impact, sans-serif;outline:none;border:none;box-shadow:5px 2px 5px 5px black;height:30px;width:auto;font-size:15px;color: white;">E-Mail Address</th>
                        <th style="background-color:#F75D59;font-family: Impact, sans-serif;outline:none;border:none;box-shadow:5px 2px 5px 5px black;height:30px;width:auto;font-size:15px;color: white;">Contact</th>
                        <th style="background-color:#F75D59;font-family: Impact, sans-serif;outline:none;border:none;box-shadow:5px 2px 5px 5px black;height:30px;width:auto;font-size:15px;color: white;">Address</th>
                        <th style="background-color:#F75D59;font-family: Impact, sans-serif;outline:none;border:none;box-shadow:5px 2px 5px 5px black;height:30px;width:auto;font-size:15px;color: white;">Password</th>
                        <th style="background-color:#F75D59;font-family: Impact, sans-serif;outline:none;border:none;box-shadow:5px 2px 5px 5px black;height:30px;width:auto;font-size:15px;color: white;">Delete</th>
                    </tr>
                    <th>&nbsp;</th>
                    <%
                            DbManager dm=new DbManager();
                            ResultSet rs=dm.selectQuery("select * from register");
                            while(rs.next())
                            {
        
                    %>
                      <tr>
                         <td style="background-color:lightseagreen;font-family:consolas;border-radius: 20px;padding:5px;outline:none;border:none;box-shadow:5px 2px 5px 5px black;height:20px;width:auto;font-size:10px;color: white;"><%=rs.getString("student_name")%></td>
                         <td style="background-color:lightseagreen;font-family:consolas;border-radius: 20px;padding:5px;outline:none;border:none;box-shadow:5px 2px 5px 5px black;height:20px;width:auto;font-size:10px;color: white;"><%=rs.getString("father_name")%></td>
                         <td style="background-color:lightseagreen;font-family:consolas;border-radius: 20px;padding:5px;outline:none;border:none;box-shadow:5px 2px 5px 5px black;height:20px;width:auto;font-size:10px;color: white;"><%=rs.getString("branch")%></td>
                         <td style="background-color:lightseagreen;font-family:consolas;border-radius: 20px;padding:5px;outline:none;border:none;box-shadow:5px 2px 5px 5px black;height:20px;width:auto;font-size:10px;color: white;"><%=rs.getString("gender")%></td>
                         <td style="background-color:lightseagreen;font-family:consolas;border-radius: 20px;padding:5px;outline:none;border:none;box-shadow:5px 2px 5px 5px black;height:20px;width:auto;font-size:10px;color: white;"><%=rs.getString("enrollmentid")%></td>
                         <td style="background-color:lightseagreen;font-family:consolas;border-radius: 20px;padding:5px;outline:none;border:none;box-shadow:5px 2px 5px 5px black;height:20px;width:auto;font-size:10px;color: white;"><%=rs.getString("emailaddress")%></td>
                         <td style="background-color:lightseagreen;font-family:consolas;border-radius: 20px;padding:5px;outline:none;border:none;box-shadow:5px 2px 5px 5px black;height:20px;width:auto;font-size:10px;color: white;"><%=rs.getString("password")%></td>
                         <td style="background-color:lightseagreen;font-family:consolas;border-radius: 20px;padding:5px;outline:none;border:none;box-shadow:5px 2px 5px 5px black;height:20px;width:auto;font-size:10px;color: white;"><%=rs.getString("address")%></td>
                         <td style="background-color:lightseagreen;font-family:consolas;border-radius: 20px;padding:5px;outline:none;border:none;box-shadow:5px 2px 5px 5px black;height:20px;width:auto;font-size:10px;color: white;"><%=rs.getString("regdate")%></td>
                        <td style="background-color:lightseagreen;font-family:consolas;border-radius: 20px;padding:5px;outline:none;border:none;box-shadow:5px 2px 5px 5px black;height:20px;width:auto;font-size:10px;color: white;"><a href="admincode/deletevendors.jsp?emailaddress=<%=rs.getString("emailaddress")%>"> Delete</a></td>
                      
                         
                      </tr> 
                    
                    
                    <%
                            }
                     %>
                    <th>&nbsp;</th>
                </table>
            </div>
            <div id="footer">
                <div id="lfooter">
                    Copyright &copy; to mmmut
                </div>
                <div id="rfooter">
                    Developed by:Mrityunjay Upadhyay
                </div>                
            </div>            
        </div>
    </body>
</html>

<%
    }
    
%>

 
