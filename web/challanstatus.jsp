<%-- 
    Document   : challanstatus
    Created on : Apr 12, 2014, 6:31:47 PM
    Author     : Taresh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
     <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title><script type="text/javascript" src="stmenu.js"></script>
    <link href="mainpage.css" rel="stylesheet" type="text/css">
    <style type="text/css">
<!--
.style2 {color: #0000FF}
.style3 {color: #FF0000}
-->
    </style>
    </head>
    <body>
    <div id="headder"><img src="images/header.jpg" width="900" height="250"></div>
    <div id="menu"><%@include file="sothinkmenu.jsp"%></div>
    <div id="detail">
        <div id="lchild"><%@include file="sidemenu1.jsp"%></div>
        <%@include file="connection.jsp"%>
    <div id="rchild">
        <p align="center">
            Challan Status
        </p>
        <p align= "center">
                <%  
                String challan_no=null;
                String vehicle_no=null;
       
        try
        {
    
        ResultSet rs =  st.executeQuery("select * from  create_challan where challan_no='"+challan_no+"' or vehicle_no='"+vehicle_no+"'");
        %>  
            <table align="center" border="1">
                    <tr>
                        <th>Name &nbsp;</th>
            
                        <th>Amount &nbsp;</th>
                        <th>Last Date &nbsp;</th>
                        <th>Status &nbsp;</th>
                    </tr>
                 <% while (rs.next()) 
                        {
                        %>
                        <tr>
                        <td><%out.println(rs.getString("fname"));%></td>
                        <td><%out.println(rs.getString("lname"));%></td>
                        <td><%out.println(rs.getString("opr_id"));%></td>
                        <td><%out.println(rs.getString("email"));%></td>
                        <td><%out.println(rs.getString("mobile"));%></td>
                        <td><%out.println(rs.getString("shift"));%></td>
                        </tr>
                        <%
        }
    }
    catch(Exception e)
                {
                }
      if(request.getParameter("Back")!=null)
          {
          response.sendRedirect("afterlogin.jsp");
      }
                        %>
                    
            </table></p>  
            <p>
                <input type="submit" name="Back" id="Back" value="Back">
            </p>
      
</div></div>
    </div>
       
    </body>
</html>
