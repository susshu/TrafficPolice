<%@include file="headder.jsp" %>
    <div id="menu"><%@include file="sothinkmenu.jsp"%></div>
    <div id="detail">
        <div id="lchild"><%@ include file="Lchild1.jsp"%></div>
    <div id="rchild">
         
          <%@include file="connection.jsp"%>
           <%
int rid=0;
         String un1="",pas1="";
         boolean flag=false;
         if(request.getParameter("Submit")!=null)
             {
             String un=request.getParameter("uname");
             String pas=request.getParameter("pass");
             session.putValue(un, pas);
             try{
                ResultSet rs=st.executeQuery("select * from operator_login");
                    while(rs.next()){
                    un1=rs.getString("opr_id");
                    pas1=rs.getString("password");
                    if(un1.equals(un)&&pas1.equals(pas)){
                        response.sendRedirect("afteroperator.jsp");
                        flag=true;
                        break;
                        }else{
                        %>
                        <script>alert('invalid u_id or password')</script>
                        <%
                                }
                    }
                    }

             catch(Exception e){
                 out.println(e);}

         }
             if(flag==true){
             session.setAttribute("username",rid);
             session.setAttribute("password",pas1);
             }
         %>
          <form name="form1" method="post" action="">
          <div align="center">
            <p>&nbsp;</p>
            <p>&nbsp;</p>
            <p>&nbsp;</p>
            <p>&nbsp;</p>
            <p>Operator Login</p>
            <table width="366" border="0">
              <tr>
                <td width="107">Operator_ID</td>
                <td width="173"><label for="uname"></label>
                <input type="text" name="uname" id="uname" required></td>
              </tr>
              <tr>
                <td>Password</td>
                <td><label for="pass"></label>
                <input type="password" name="pass" id="pass" required></td>
              </tr>
              <tr>
                <td colspan="2"><div align="center">
                  <input type="submit" name="Submit" id="Submit" value="Submit">  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  <input type="submit" name="Cancel" id="Cancel" value="Cancel">
                </div></td>
              </tr>
            </table>
          </div>
        </form>
        <script>
            var f1 = new LiveValidation('uname');
f1.add( Validate.Presence );
            var f2 = new LiveValidation('pass');
f2.add( Validate.Presence );
        </script>
        <h1>&nbsp;</h1>
        </div>
        </div>
    </body>
</html>