				<%@include file="headder.jsp" %>
    <div id="menu"><%@include file="sothinkmenu.jsp"%></div>
    <div id="detail">
        <div id="lchild"><%@include file="sidemenu1.jsp"%></div>
    <div id="rchild">
        <%@include file="connection.jsp"%>
        <form name="form1" method="post" action="">
          <div align="center">
            <p>Operators Information</p>
            <p>&nbsp;</p>
            <p align= "center">
                <%     
       
        try
        {
   
        ResultSet rs =  st.executeQuery("select * from  operator_login");
        %>  
            <table align="center" border="1">
                    <tr>
                        <th>First Name &nbsp;</th>
                        <th>Last Name &nbsp;</th>
                        <th>Operator Id &nbsp;</th>
                        <th>Email &nbsp;</th>
                        <th>Mobile &nbsp;</th>
                        <th>Shift &nbsp;</th>
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
          </div>
        </form>
        <h2>&nbsp;</h2></div></div>
    </body>
</html>
