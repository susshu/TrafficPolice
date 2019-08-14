<%@include file="headder.jsp" %>
    <div id="menu"><%@include file="sothinkmenu.jsp"%></div>
    <div id="detail">
        <div id="lchild"><%@include file="sidemenu1.jsp"%></div>
    <div id="rchild">
         <%@include file="connection.jsp"%>
    <form name="form1" method="post" action="">
      <p align="center">Search Any Vehicle</p>
      <p align="center">Vehicle's Registration Id :
        <label for="vechid"></label>
        &nbsp;&nbsp;&nbsp;&nbsp;
        <input type="text" name="vechid" id="vechid" required>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <input type="submit" name="Find" id="Find" value="Find">
      </p>
      <p>&nbsp;</p>
       <p align= "center">
         <%     
                if(request.getParameter("Find")!=null)
                    {
        try
        {
        String vechid = request.getParameter("vechid");
        ResultSet rs =  st.executeQuery("select * from add_vehicle where vehicle_reg_no='"+vechid+"'");
        %>  
            <table align="center" border="1">
                    <tr>
                        <th>Vehicle Registration No. &nbsp;</th>
                        <th>Engine No. &nbsp;</th>
                        <th>Purchase Dealer &nbsp;</th>
                        <th>Owner Name &nbsp;</th>
                        <th>Address &nbsp;</th>
                        <th>Email address &nbsp;</th>
                        <th>Mobile No. &nbsp;</th>
                        
                        </tr>
                 <% while (rs.next()) 
                        {
                        %>
                        <tr>
                        <td><%out.println(rs.getString("vehicle_reg_no"));%></td>
                        <td><%out.println(rs.getString("engine_no"));%></td>
                        <td><%out.println(rs.getString("purchase_dealer"));%></td>
                        <td><%out.println(rs.getString("owner_name"));%></td>
                        <td><%out.println(rs.getString("address"));%></td>
                        <td><%out.println(rs.getString("e-mail"));%></td>
                        <td><%out.println(rs.getString("mobile"));%></td>
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
          response.sendRedirect("adminLogin.do");
      }
                        %>
                    
            </table>
            <p align="center">
                <input type="submit" name="Back" id="Back" value="Back">
            </p>
    </form>
    </div></div>
    </body>
</html>
