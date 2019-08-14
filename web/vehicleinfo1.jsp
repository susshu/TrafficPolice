<%@include file="headder.jsp" %>
    <div id="menu"><%@include file="sothinkmenu.jsp"%></div>
    <div id="detail">
        <div id="lchild"><%@include file="sidemenu2.jsp"%></div>
    <div id="rchild">
        <%@include file="connection.jsp"%>
        <form name="form1" method="post" action="">
          <div align="center">
            <p>Vehicles Information</p>
            <p>&nbsp;</p>
            <p align= "center">
                <%     
       
        try
        {
   
        ResultSet rs =  st.executeQuery("select * from  add_vehicle");
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
         if(request.getParameter("Back")!=null)
          {
          response.sendRedirect("afteroperator.jsp");
      }
      
                        %>
                    
            </table></p>  
            <p align="center">
                <input type="submit" name="Back" id="Back" value="Back">
            </p>
          </div>
        </form>
        <h2>&nbsp;</h2></div></div>
    </body>
</html>
