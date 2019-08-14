<%@include file="headder.jsp" %>
        <%@ page  language="java" %>
        <%@ page  import = "java.net.*"%>
        <%@ page  import="java.io.*"%>
    <div id="menu"><%@include file="sothinkmenu.jsp"%></div>
    <div id="detail">
        <div id="lchild"><%@include file="sidemenu2.jsp"%></div>
    <div id="rchild">
        <%@include file="connection.jsp"%>
        
    <form name="form1" method="post" action="">
      <p align="center">Late Challan</p>
      <p>&nbsp ;</p>
      <p align= "center">
                <%    
     
        try
        {
        String sts="notpaid";
        ResultSet rs =  st.executeQuery("select * from  create_challan where Status='"+sts+"' and last_date<curdate()");
        %>  
            <table align="center" border="1">
                    <tr>
                        <th>Challan No. &nbsp;</th>
                        <th>Date &nbsp;</th>
                        <th>Last Date &nbsp;</th>
                        <th>Challan Type &nbsp;</th>
                        <th>Amount &nbsp;</th>
                        <th>Name &nbsp;</th>
                        <th>Mobile No. &nbsp;</th>
                        
                        </tr>
                 <% while (rs.next()) 
                        {
                        %>
                        <tr>
                        <td><%out.println(rs.getString("challan_no"));%></td>
                        <td><%out.println(rs.getDate("date"));%></td>
                        <td><%out.println(rs.getDate("last_date"));%></td>
                        <td><%out.println(rs.getString("c_type"));%></td>
                        <td><%out.println(rs.getString("amount"));%></td>
                        <td><%out.println(rs.getString("name"));%></td>
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
        
        if(request.getParameter("SendMessage")!=null)
            {
             try
        {
        String sts="notpaid";
        ResultSet rs =  st.executeQuery("select * from  create_challan where Status='"+sts+"' and last_date>curdate()");
         String msg1="";
         int challno=0;
               while (rs.next()) 
                  {
                      msg1   = rs.getString("mobile");   
                      out.println(msg1);
                      challno = rs.getInt("challan_no");
                      out.println(challno);
                  } 
              
                String msg = "your last date to pay challan for challan no:  " + challno + " has been passed. Now you have to pay penalty.";

                String Url1 = "http://panel.msgclub.net/api/sendhttp.php?authkey=30ddc96e21bce8fca0c96887f5c49dd3in&user=sbinfotech&password=706929&mobiles=<PHONE>&message=<MSG>&sender=sender&route=1 ";//
                    String url = Url1.replace("<PHONE>", msg1).replace("<MSG>", msg).replaceAll(" ", "%20");
                    String smsApiResponse = sendMySMS(url);
                    System.out.println(smsApiResponse);
                %>
                <script>alert('Challan Message has been sent to the given Mail Addres....')</script>
                <%
                           
            }
             catch(Exception e)
                {
                }
          }
                %>
                
                <%!
    public static String sendMySMS(String url) {
        StringBuilder output = new StringBuilder();
        try {
            URL hp = new URL(url);
            //System.out.println(url);
            URLConnection hpCon = hp.openConnection();
            BufferedReader in = new BufferedReader(new InputStreamReader(hpCon.getInputStream()));
            String inputLine;
            while ((inputLine = in.readLine()) != null) {
                output.append(inputLine);
            }
            in.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return output.toString();
    }
                        %>
                    
            </table></p>   
            <p align="center">
                <input type="submit" name="Back" id="Back" value="Back">
                <input type="submit" name="SendMessage" id="SendMessage" value="SendMessage">    
            </p>
    </form>
    </div></div>
    </body>
</html>
