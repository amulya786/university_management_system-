<%--
    Document:regcode.
    Auther:Mrityunjay Upadhyay
    Created on : 3 Aug, 2019, 3:44:35 PM
    Project name:MMMUT
--%>


<%@page import="mypack.DbManager"%>
<%

     String student_name=request.getParameter("student_name");
     String father_name=request.getParameter("father_name");
     String branch=request.getParameter("branch");
     String gender=request.getParameter("gender");
     String contactno=request.getParameter("contactno");
     String emailaddress=request.getParameter("emailaddress");
     String enrollmentid=request.getParameter("enrollmentid");
     String address=request.getParameter("address");
     String password=request.getParameter("password");
     DbManager dm=new DbManager();
     String regdate=dm.getDate();
     String usertype="user";
     String query1="insert into register values('"+student_name+"','"+father_name+"','"+branch+"','"+gender+"','"+enrollmentid+"','"+emailaddress+"','"+contactno+"','"+address+"','"+password+"','"+regdate+"')";
     String query2="insert into login values('"+emailaddress+"','"+password+"','"+usertype+"')";
     if(dm.nonQuery(query1)==true)
     {
         if(dm.nonQuery(query2)==true)
         {
             out.print("<script>alert('Registration is done!');window.location.href='../index.jsp';</script>");
         }
     }
     else
     {
         out.print("<script>alert('Registration is not done!');window.location.href='../index.jsp';</script>");
     }
%> 
