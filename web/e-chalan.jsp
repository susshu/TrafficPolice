<%@include file="headder.jsp" %>
<div id="menu"><%@include file="sothinkmenu.jsp"%>
</div>
        <div id="detail">
            <div id="lchild"><%@include file="Lchild1.jsp"%></div>
            <div id="rchild">
                <%@include file="connection.jsp"%>
                
                <form name="form1" method="post" action="">
                    <p align="center">E-Challan Status</p>
                    <table width="310" border="1" align="center">
                        <tr>
                            <td width="135">Enter Vehicle No. / Challan No.</td>
                            <td width="170"><label>
                                    <input type="text" name="textfield">
                            </label></td>
                        </tr>
                        <tr>
                        <tr>
                        <td colspan="2"><div align="center">
                                <input type="submit" name="Search" id="Search" value="Search">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;
                                <input type="submit" name="Cancel" id="Cancel" value="Cancel"> 
                        </div></td>
                    </table>
                    <p align= "center">
                        <%
            if (request.getParameter("Search") != null) {
                try {
                    String no = request.getParameter("textfield");
                    ResultSet rs = st.executeQuery("select * from  create_challan where challan_no='" + no + "' or vehicle_no='" + no + "'");
                        %>  
                        <p align="center">
                            Challan Status
                        </p>
                        <table align="center" border="1">
                            <tr>
                                <th>Name &nbsp;</th>
                                <th>Amount &nbsp;</th>
                                <th>Last Date &nbsp;</th>
                                <th>Status &nbsp;</th>
                            </tr>
                            <% while (rs.next()) {
                            %>
                            <tr>
                                <td><%out.println(rs.getString("name"));%></td>
                                <td><%out.println(rs.getString("amount"));%></td>
                                <td><%out.println(rs.getString("last_date"));%></td>
                                <td><%out.println(rs.getString("Status"));%></td>
                           </tr>
                            <%
                    }
                } catch (Exception e) {
                }
            }
            if (request.getParameter("Back") != null) {
                response.sendRedirect("mainpage.jsp");
            }
                            %>
                            
                    </table></p>  
                    <p align="center">
                        <input type="submit" name="Back" id="Back" value="Back">
                    </p>
                </form>
                
                <script>
            var field1 = new LiveValidation( 'textfield' );
field1.add( Validate.Presence);
        </script>
            </div>
        </div>
        
    </body>
</html>
