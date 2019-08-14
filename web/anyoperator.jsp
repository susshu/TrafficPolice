<%@include file="headder.jsp" %>
    <div id="menu"><%@include file="sothinkmenu.jsp"%></div>
    <div id="detail">
        <div id="lchild"><%@include file="sidemenu1.jsp"%></div>
    <div id="rchild">
         <%@include file="connection.jsp"%>
       
        <form name="form1" method="post" action="">
          <div align="center">
            <p>Search Any Operator</p>
            <p>Operator's Id :      
              <label for="operatorid"></label>&nbsp;&nbsp;&nbsp;&nbsp;
              <input type="text" name="operatorid" id="operatorid" required>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
               <input type="submit" name="Find" id="Find" value="Find">
            </p>
            <p>&nbsp;</p>
             <p align= "center">
                <%     
                if(request.getParameter("Find")!=null)
                    {
        try
        {
        String opid = request.getParameter("operatorid");
        ResultSet rs =  st.executeQuery("select * from  operator_login where opr_id='"+opid+"'");
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
