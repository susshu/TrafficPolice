
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="mainpage.css" rel="stylesheet" type="text/css">
    </head>
    <body><div id="headder"></div>
    <div id="menu"></div>
    <div id="detail">
    <div id="lchild"></div>
    <div id="rchild">
        <%@include file="connection.jsp"%>
         
         <%
            if(request.getParameter("Submit")!=null)
            {
                String id = request.getParameter("id");
                String vechno = request.getParameter("vechno");
                String mobile = request.getParameter("mobile");
                String date = request.getParameter("date");
                String signal = request.getParameter("signal");
                String square = request.getParameter("square");
                
                st.executeUpdate("insert into passinf_info values ('"+id+"' , '"+vechno+"', '"+mobile+"', '"+date+"', '"+signal+"', '"+square+"')");

        %><script>alert('Record is inserted')</script>
                <%
            }
         %>
        
      <form name="form1" method="post" action="">
        <table width="252" height="215" border="0">
          <tr>
            <td>Id</td>
            <td><label>
              <input name="id" type="text" id="id">
            </label></td>
          </tr>
          <tr>
            <td>Vehicle no. </td>
            <td><label>
              <input name="vechno" type="text" id="vechno">
            </label></td>
          </tr>
          <tr>
            <td>Mobile</td>
            <td><label>
              <input name="mobile" type="text" id="mobile">
            </label></td>
          </tr>
          <tr>
            <td>Date</td>
            <td><label>
              <input name="date" type="text" id="date">
            </label></td>
          </tr>
          <tr>
            <td>Signal</td>
            <td><label>
              <input name="signal" type="text" id="signal">
            </label></td>
          </tr>
          <tr>
            <td>Square</td>
            <td><label>
              <input name="square" type="text" id="square">
            </label></td>
          </tr>
          <tr>
            <td>&nbsp;</td>
            <td><label>
              <input type="submit" name="Submit" value="Submit">
              <input type="submit" name="Cancel" id="Cancel" value="Cancel">
            </label></td>
          </tr>
        </table>
      </form>
</div>
	   </div>
    </body>
</html>
