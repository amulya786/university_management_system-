<%-- 
    Document   : deltender
    Created on : 10 Aug, 2021, 2:52:01 PM
    Author     : Mrityunjay Upadhyay
    Project    : MMMUT
--%>
<%@page import="mypack.DbManager"%>
<% 
    String id=request.getParameter("id");
    DbManager dm=new DbManager();
    String query="delete from uploadfile where id='"+id+"'";
    if(dm.nonQuery(query)==true)
    {
        out.print("<script>alert('Tender is deleted!');window.location.href='../uploadtenders.jsp';</script>");
    }
    else
    {
        out.print("<script>alert('Tender is not deleted!');window.location.href='../uploadtenders.jsp';</script>");
    }
%>
