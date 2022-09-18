<%-- 
    Document   : deletecomplaints
    Created on : 9 Aug, 2021, 4:56:45 PM
    Author     : Mrityunjay Upadhyay
--%>
 
<%@page import="mypack.DbManager"%>
<% 
    String id=request.getParameter("id");
    DbManager dm=new DbManager();
    String query="delete from complain where id='"+id+"'";
    if(dm.nonQuery(query)==true)
    {
        out.print("<script>alert('Complain is deleted!');window.location.href='../complains.jsp';</script>");
    }
    else
    {
        out.print("<script>alert('Complain is not deleted!');window.location.href='../complains.jsp';</script>");
    }
%>
