    <%@include file="headder.jsp" %>
    <div id="menu"><%@include file="sothinkmenu.jsp"%></div>
    <div id="detail">
        <div id="lchild"><%@include file="sidemenu2.jsp"%></div>
    <div id="rchild">
         <%@include file="connection.jsp"%>
    <form name="form1" method="post" action="">
      <div align="center">
        <p>Challan Information
        </p>
        <p>&nbsp;</p>
        <p align= "center">
                <%     
       
        try
        {
   
        ResultSet rs =  st.executeQuery("select * from  create_challan");
        %>  
            <table align="center" border="1">
                    <tr>
                        <th>Challan No. &nbsp;</th>
                        <th>Date &nbsp;</th>
                        <th>Challan Type &nbsp;</th>
                        <th>Amount &nbsp;</th>
                        <th>Name &nbsp;</th>
                        <th>Address &nbsp;</th>
                        <th>Email. &nbsp;</th>
                        
                        </tr>
                 <% while (rs.next()) 
                        {
                        %>
                        <tr>
                        <td><%out.println(rs.getString("challan_no"));%></td>
                        <td><%out.println(rs.getDate("date"));%></td>
                        <td><%out.println(rs.getString("c_type"));%></td>
                        <td><%out.println(rs.getString("amount"));%></td>
                        <td><%out.println(rs.getString("name"));%></td>
                        <td><%out.println(rs.getString("address"));%></td>
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
    </form></div></div>
    </body>
</html>
